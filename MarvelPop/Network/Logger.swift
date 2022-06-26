//
//  Logger.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 17/6/22.
//

import Foundation

public protocol NetworkLoggerProtocol {
    func showLog(_ request: URLRequest)
    func showLog(data: Data?, response: URLResponse?, error: Error?)
}

public class APILogger: NetworkLoggerProtocol {
    public enum Environment {
        case debug
        case production
    }
    
    let environment: Environment
    
    public init(_ environment: Environment = .debug) {
        self.environment = environment
    }

    func outputLog(_ message: String) {
        switch environment {
            case .debug:
            print(message)
        case .production:
            break
        }
    }
    
    public func showLog(_ request: URLRequest) {
        guard let output = buildOutput(request) else { return }
        outputLog(output)
    }
    
    public func showLog(data: Data?, response: URLResponse?, error: Error?) {
        guard let httpResponse = response as? HTTPURLResponse else {
            outputLog("Invalid response")
            return
        }
        
        switch environment {
            case .production:
                break
            case .debug:
                outputLog(log(data: data, response: httpResponse, error: error))
        }
    }

    func buildOutput(_ request: URLRequest) -> String? {
        switch environment {
            case .debug:
            return "\(log(request))"
            case .production:
            return nil
        }
    }

    func log(_ request: URLRequest) -> String {
        let urlString = request.url?.absoluteString ?? "--"
        let components = NSURLComponents(string: urlString)
        
        let method = request.httpMethod != nil ? "\(request.httpMethod!)": "--"
        let path = "\(components?.path ?? "")"
        let query = "\(components?.query ?? "")"
        let host = "\(components?.host ?? "")"
        
        var requestLog = "\n---------- OUT ---------->\n"
        requestLog += "\(urlString)"
        requestLog += "\n\n"
        requestLog += "\(method) \(path)?\(query) HTTP/1.1\n"
        requestLog += "Host: \(host)\n"
        for (key,value) in request.allHTTPHeaderFields ?? [:] {
            requestLog += "\(key): \(value)\n"
        }
        if let body = request.httpBody{
            requestLog += "\n\(body.prettyJSONString ?? "")\n"
        }
        
        requestLog += "\n------------------------->\n";
        return requestLog
    }
    
    
    func log(data: Data?, response: HTTPURLResponse?, error: Error?) -> String {
        let urlString = response?.url?.absoluteString
        let components = NSURLComponents(string: urlString ?? "")
        
        let path = "\(components?.path ?? "")"
        let query = components?.query.map({ "?\($0)" }) ?? ""
        
        var responseLog = "\n<---------- IN ----------\n"
        if let urlString = urlString {
            responseLog += "\(urlString)"
            responseLog += "\n\n"
        }
        
        if let statusCode =  response?.statusCode{
            responseLog += "HTTP \(statusCode) \(path)\(query)\n"
        }
        if let host = components?.host{
            responseLog += "Host: \(host)\n"
        }
        for (key,value) in response?.allHeaderFields ?? [:] {
            responseLog += "\(key): \(value)\n"
        }
        if let body = data {
            responseLog += "\n\(body.prettyJSONString ?? "")\n"
        }
        if let error = error{
            responseLog += "\nError: \(error.localizedDescription)\n"
        }
        
        responseLog += "<------------------------\n";
        return responseLog
    }
}

extension Data {
    public var prettyJSONString: String? { /// NSString gives us a nice sanitized debugDescription
        guard let object = try? JSONSerialization.jsonObject(with: self, options: []),
            let data = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted]),
            let prettyPrintedString = String(data:data, encoding: .utf8) else { return nil }

        return prettyPrintedString
    }
}
