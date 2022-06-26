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

struct GetCharactersRequest: JSONAPIRequest {
    typealias APIResponse = CharacterDataWrapperDTO
    
    var resourcePath: String
    var decoder: JSONDecoder = JSONDecoder()
    var method: HTTPMethod = .get
    
    init() {
        self.resourcePath = "v1/public/characters"
    }
}

class CharactersDataProvider {
    let client: MarvelAPIClient
    
    init(client: MarvelAPIClient) {
        self.client = client
    }
    
    func getCharacters(completion: @escaping(Result<CharacterDataWrapperDTO, Error>) -> Void) {
        let request = GetCharactersRequest()
        client.send(request, completion: completion)
    }
}
