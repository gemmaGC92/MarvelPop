//
//  Repository.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 17/6/22.
//

import Foundation

public protocol DomainMappeable: APIRequest {
    associatedtype Domain
    static func convert(_ response: APIResponse) -> Result<Domain, Error>
}

public class Repository<Domain> {
    let client: APIClient

    public init(_ client: APIClient) {
        self.client = client
    }

    public func fetch<Request>(_ request: Request, completion: @escaping (Result<Domain, Error>) -> Void) where Request: DomainMappeable, Request.Domain == Domain {
        client.send(request) { result in
            completion(result.flatMap(Request.convert))
        }
    }
}
