//
//  CharactersDataProvider.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation

struct CharacterDataWrapperDTO: Codable {
    var code: Int?
    var status: String?
    var copyright: String?
    var data: CharacterDataContainerDTO?
}

struct CharacterDataContainerDTO: Codable {
    var offset: Int?
    var limit: Int?
    var total: Int?
    var count: Int?
    var results: [CharacterDTO]?
}

struct CharacterDTO: Codable {
    var id: Int?
    var name: String?
    var description: String?
    var thumbnail: ImageDTO?
    var comics: ItemListDTO?
    var stories: ItemListDTO?
    var events: ItemListDTO?
    var series: ItemListDTO?
}

struct ImageDTO: Codable {
    var path: String?
    var `extension`: String?
}

struct ItemListDTO: Codable {
    var available: Int?
    var items: [ItemSummaryDTO]?
}

struct ItemSummaryDTO: Codable {
    var name: String?
}

struct Paging: Codable {
    var count: Int
    var offset: Int
    var total: Int
    
    var hasMoreData: Bool {
        if count + offset >= total {
            return false
        } else {
            return true
        }
    }
}

struct GetCharactersRequest: JSONAPIRequest {
    typealias APIResponse = CharacterDataWrapperDTO
    
    var resourcePath: String
    var decoder: JSONDecoder = JSONDecoder()
    var method: HTTPMethod = .get
    
    var offset: Int?
    var filter: String?
    
    init(offset: Int? = nil, filter: String? = nil) {
        self.offset = offset
        self.filter = filter
        self.resourcePath = "v1/public/characters"
    }
    
    func generateQueryItems() -> [URLQueryItem] {
        var items: [URLQueryItem] = []
        if let offset = offset {
            items.append(URLQueryItem(name: "offset", value: "\(offset)"))
        }
        
        if let filter = filter, !filter.isEmpty {
            items.append(URLQueryItem(name: "nameStartsWith", value: "\(filter)"))
        }
        
        return items
    }
}

class CharactersDataProvider {
    let client: APIClient
    
    init(client: APIClient) {
        self.client = client
    }
    
    func getCharacters(offset: Int?, filter: String? = nil, completion: @escaping(Result<CharacterDataWrapperDTO, Error>) -> Void) {
        let request = GetCharactersRequest(offset: offset, filter: filter)
        client.send(request, completion: completion)
    }
    
    func filterCharacters(_ filter: String, offset: Int?, completion: @escaping(Result<CharacterDataWrapperDTO, Error>) -> Void) {
        let request = GetCharactersRequest(offset: offset, filter: filter)
        client.send(request, completion: completion)
    }
}
