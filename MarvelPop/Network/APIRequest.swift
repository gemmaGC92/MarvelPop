//
//  APIRequest.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 17/6/22.
//

import Foundation
import CryptoKit

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}

public typealias EmptyResponse = Void

public protocol APIRequest {
    associatedtype APIResponse
    
    var resourcePath: String { get }
    var method: HTTPMethod { get }

    func generateBody() -> Data?
    func generateHeaders() -> [String: String]
    func generateQueryItems() -> [URLQueryItem]
    func generateURLrequest(_ baseURL: URL) -> URLRequest
    
    func accept(_ response: HTTPURLResponse) -> Bool
    func parse(_ response: HTTPURLResponse, data: Data?) -> Result<APIResponse, Error>
    func error(_ response: HTTPURLResponse, data: Data?, error: Error?) -> Result<APIResponse, Error>
}

public extension APIRequest {
    var publicKey: String {
        return "c89204bb01e8bff368a2ca6fcb02d174"
    }
    var privateKey: String {
        return "f3749b5e45ca23c18fa2f69d5a3a90180708b52c"
    }
    
    var method: HTTPMethod { return .get }

    func generateBody() -> Data? {
        return nil
    }
    
    func generateHeaders() -> [String: String] {
        return [:]
    }
    
    private func getTimestamp() -> String {
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let timestamp = format.string(from: date)
        return timestamp
    }

    func MD5(string: String) -> String {
        let digest = Insecure.MD5.hash(data: string.data(using: .utf8) ?? Data())

        return digest.map {
            String(format: "%02hhx", $0)
        }.joined()
    }
    
    func generateQueryItems() -> [URLQueryItem] {
        var ts = getTimestamp()
        var hash = MD5(string: ts + privateKey + publicKey)
        return [
            URLQueryItem(name: "ts", value: getTimestamp()),
            URLQueryItem(name: "apikey", value: "c89204bb01e8bff368a2ca6fcb02d174"),
            URLQueryItem(name: "hash", value: hash)
        ]
    }
    
    func generateURLrequest(_ baseURL: URL) -> URLRequest {
        var urlRequest = appendURLParameters(baseURL)
        urlRequest.httpMethod = method.rawValue
        urlRequest.httpBody = generateBody()
        urlRequest.allHTTPHeaderFields = generateHeaders()
        return urlRequest
    }
    
    func accept(_ response: HTTPURLResponse) -> Bool {
        return 200..<300 ~= response.statusCode
    }
    
    func error(_ response: HTTPURLResponse, data: Data?, error: Error?) -> Result<APIResponse, Error> {
        guard let error = error else {
            return .failure(NSError(domain: "Marvel.Network", code: -666))
        }
        return .failure(error)
    }

    private func appendURLParameters(_ baseURL: URL) -> URLRequest {
        guard
            let url = URL(string: resourcePath, relativeTo: baseURL),
            var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
            else {
                fatalError("Bad resourceName: \(resourcePath)")
        }
        
        let customQueryItems = generateQueryItems()
        components.queryItems = customQueryItems.isEmpty ? nil : customQueryItems
        guard let finalURL = components.url else { fatalError("Bad URLComponents construction") }
        return URLRequest(url: finalURL)
    }
    
}

public protocol JSONAPIRequest: APIRequest {
    var decoder: JSONDecoder { get }
}

public extension JSONAPIRequest where APIResponse: Decodable {
    func parse(_ response: HTTPURLResponse, data: Data?) -> Result<APIResponse, Error> {
        guard let responseData = data else {
            return .failure("Empty response")
        }
        
        do {
            let responseObject = try decoder.decode(APIResponse.self, from: responseData)
            return .success(responseObject)
        } catch {
            return .failure(error)
        }
    }
}

public extension APIRequest where APIResponse == Void {
    func parse(_ response: HTTPURLResponse, data: Data?) -> Result<Void, Error> {
        return .success(())
    }
}
