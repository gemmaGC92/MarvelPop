//
//  APIClient.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 17/6/22.
//

import Foundation

public protocol APIClient {
    var clientHeaders: (() -> [String: String])? { get set }
    func send<T: APIRequest>(_ request: T, completion: @escaping (Result<T.APIResponse, Error>) -> Void)
}

class MarvelAPIClient: APIClient {
    private let baseURL: URL
    private let session: URLSession
    private let responseQueue: DispatchQueue
    public let logger: NetworkLoggerProtocol
    var clientHeaders: (() -> [String : String])?
    
    public init(baseURL: URL,
                headers: (() -> [String : String])? = nil,
                session: URLSession = URLSession(configuration: URLSessionConfiguration.default),
                responseQueue: DispatchQueue = .main,
                logger: NetworkLoggerProtocol = APILogger()
    ) {
        self.baseURL = baseURL
        self.clientHeaders = headers
        self.session = session
        self.responseQueue = responseQueue
        self.logger = logger
    }
    
    func send<T: APIRequest>(_ request: T, completion: @escaping (Result<T.APIResponse, Error>) -> Void) {
        let endpoint = self.urlRequest(for: request)
        logger.showLog(endpoint)
        let task = session.dataTask(with: endpoint) { (data, response, error) in
            self.logger.showLog(data: data, response: response, error: error)
            let result = self.handleResponse(request, data: data, response: response, error: error)
            self.responseQueue.async {
                completion(result)
            }
        }
        task.resume()
    }
    
    public func urlRequest<T: APIRequest>(for request: T) -> URLRequest {
        var urlRequest = request.generateURLrequest(baseURL)
        if let headers = clientHeaders?() {
            headers.forEach { (key, value) in
                urlRequest.addValue(value, forHTTPHeaderField: key)
            }
        }
        return urlRequest
    }
    
    func handleResponse<T: APIRequest>(_ request: T, data: Data?, response: URLResponse?, error: Error?) -> Result<T.APIResponse, Error> {
        guard let httpResponse = response as? HTTPURLResponse else {
            return .failure("Invalid response")
        }
        
        if request.accept(httpResponse) {
            return request.parse(httpResponse, data: data)
        } else {
            let result = request.error(httpResponse, data: data, error: error)
            switch result {
            case .success:
                return result
            case .failure(let resultError):
                return .failure(resultError)
            }
        }
    }
}

extension String: Error {}
