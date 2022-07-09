//
//  PublicationsDataProvider.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 6/7/22.
//

import Foundation

struct PublicationDataWrapperDTO: Codable {
    var code: Int?
    var status: String?
    var copyright: String?
    var data: PublicationDataContainerDTO?
}

struct PublicationDataContainerDTO: Codable {
    var offset: Int?
    var limit: Int?
    var total: Int?
    var count: Int?
    var results: [PublicationDTO]?
}

struct PublicationDTO: Codable {
    var id: Int?
    var title: String?
    var description: String?
}

struct GetPublicationRequest: JSONAPIRequest {
    typealias APIResponse = PublicationDataWrapperDTO
    
    var resourcePath: String
    var decoder: JSONDecoder = JSONDecoder()
    var method: HTTPMethod = .get
    
    var offset: Int?
    
    init(id: Int, type: PublicationType, offset: Int? = nil) {
        self.resourcePath = "v1/public/characters/\(id)/\(type.rawValue)"
        self.offset = offset
    }
    
    func generateQueryItems() -> [URLQueryItem] {
        var items: [URLQueryItem] = []
        if let offset = offset {
            items.append(URLQueryItem(name: "offset", value: "\(offset)"))
        }
        
        return items
    }
}

class PublicationsListDataProvider {
    let client: APIClient
    
    init(client: APIClient) {
        self.client = client
    }
    
    func getPublication(id: Int, type: PublicationType, offset: Int?, completion: @escaping(Result<PublicationDataWrapperDTO, Error>) -> Void) {
        let request = GetPublicationRequest(id: id, type: type, offset: offset)
        client.send(request, completion: completion)
    }
}
