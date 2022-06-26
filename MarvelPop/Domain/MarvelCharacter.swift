//
//  Character.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation

struct MarvelCharacter {
    var id: Int?
    var name: String?
    var description: String?
    
    init(_ dto: CharacterDTO?) {
        self.name = dto?.name
        self.description = dto?.description
        self.id = dto?.id
    }
}
