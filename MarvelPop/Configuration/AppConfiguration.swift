//
//  AppConfiguration.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 17/6/22.
//

import Foundation

class NoRedirectSession: NSObject, URLSessionTaskDelegate {
    func urlSession(_ session: URLSession, task: URLSessionTask, willPerformHTTPRedirection response: HTTPURLResponse, newRequest request: URLRequest) async -> URLRequest? {
        return nil
    }
}

extension URLSession {
    static var defaultWithoutRedirect: URLSession {
        let configuration = URLSessionConfiguration.default
        let sessionDelegate = NoRedirectSession()
        return URLSession(configuration: configuration, delegate: sessionDelegate, delegateQueue: nil)
    }
}
