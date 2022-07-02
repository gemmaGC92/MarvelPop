//
//  CharactersDataProvider.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation

struct CharacterDataWrapperDTO: Decodable {
    var code: Int?
    var status: String?
    var copyright: String?
    var data: CharacterDataContainerDTO?
}

struct CharacterDataContainerDTO: Decodable {
    var offset: Int?
    var limit: Int?
    var total: Int?
    var count: Int?
    var results: [CharacterDTO]?
}

struct CharacterDTO: Decodable {
    var id: Int?
    var name: String?
    var description: String?
    var thumbnail: ImageDTO?
    var comics: ItemListDTO?
    var stories: ItemListDTO?
    var events: ItemListDTO?
    var series: ItemListDTO?
}

struct ImageDTO: Decodable {
    var path: String?
    var `extension`: String?
}

struct ItemListDTO: Decodable {
    var items: [ItemSummaryDTO]?
}

struct ItemSummaryDTO: Decodable {
    var name: String?
}

struct Paging {
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
    
    init(offset: Int? = nil) {
        self.offset = offset
        self.resourcePath = "v1/public/characters"
        
    }
    
    func generateQueryItems() -> [URLQueryItem] {
        guard let offset = offset else {
            return []
        }

        return [URLQueryItem(name: "offset", value: "\(offset)")]
    }
}

class CharactersDataProvider {
    let client: MarvelAPIClient
    
    init(client: MarvelAPIClient) {
        self.client = client
    }
    
    func getCharacters(offset: Int?, completion: @escaping(Result<CharacterDataWrapperDTO, Error>) -> Void) {
        let request = GetCharactersRequest(offset: offset)
        client.send(request, completion: completion)
    }
}
