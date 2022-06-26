//
//  CharacterDetailDataProvider.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 26/6/22.
//

import Foundation

struct GetCharacterDetailsRequest: JSONAPIRequest {
    typealias APIResponse = CharacterDataWrapperDTO
    
    var resourcePath: String
    var decoder: JSONDecoder = JSONDecoder()
    var method: HTTPMethod = .get
    
    init(id: Int) {
        self.resourcePath = "v1/public/characters/\(id)"
    }
}

class CharacterDetailDataProvider {
    let client: MarvelAPIClient
    
    init(client: MarvelAPIClient) {
        self.client = client
    }
    
    
    
//    func getDetails(id: Int, completion: ) {
//        
//    }
}
