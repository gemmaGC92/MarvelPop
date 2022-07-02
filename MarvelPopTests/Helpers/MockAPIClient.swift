//
//  MockAPIClient.swift
//  MarvelPopTests
//
//  Created by Guiteras Cebrian, Gemma on 2/7/22.
//

import Foundation
import MarvelPop

extension Encodable {
    var asData: Data {
        (try? JSONEncoder().encode(self)) ?? Data()
    }
}

extension String {
    var asData: Data {
        self.data(using: .utf8) ?? Data()
    }
}

class MockAPIClient: APIClient {
    var logger: NetworkLoggerProtocol = APILogger()
    var clientHeaders: (() -> [String : String])? = nil
    
    //MARK: - Properties
    var mockData: [String: [MockResponse]]
    
    //MARK: - Inits
    init(mockData: [String: [MockResponse]]) {
        self.mockData = mockData
    }
    
    //MARK: - Methods
    func send<T>(_ request: T, completion: @escaping (Result<T.APIResponse, Error>) -> Void) where T : APIRequest {
        
        // try to get this case data
        guard let mockedCase = mockData[request.resourcePath] else {
            completion(.failure("No mock data configured yet for \(request.resourcePath)"))
            return
        }
        
        // filter specific case
        for attemp in mockedCase {
            print("Attemp: \(attemp)")
            if let data = attemp.data(for: request) {
                let responseMocked = attemp.response(for: request)
                if request.accept(responseMocked) {
                    let response = request.parse(responseMocked, data: data)
                    completion(response)
                }else{
                    let error = request.error(responseMocked, data: data, error: attemp.error)
                    completion(error)
                }
                break
            }
        }
    }
}


struct MockResponse {
    //MARK: - Properties
    var data: Data
    var statusCode: Int
    var match: String?
    var error: Error?
    
    //MARK: - Inits
    init(data: Data, statusCode: Int = 200, match: String? = nil, error: Error? = nil) {
        self.data = data
        self.statusCode = statusCode
        self.match = match
        self.error = error
    }
    
    //MARK: - Methods
    func response<T>(for request: T) -> HTTPURLResponse where T: APIRequest {
        let url = URL(string: request.resourcePath)!
        return HTTPURLResponse(url: url, statusCode: statusCode, httpVersion: nil, headerFields: nil)!
    }
    
    func data<T: APIRequest>(for request: T) -> Data? {
        guard let match = match, let body = request.generateBody(), let json = try? JSONSerialization.jsonObject(with: body, options: .fragmentsAllowed) as? [String: Any?] else {
            return data
        }
        
        // try to find the value with match
        let value = json.values.map(String.init(describing:))
        if value.contains(where: { $0.contains(match) }) {
            return data
        }else{
            return nil
        }
    }
}
