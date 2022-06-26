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
    var comics: ItemList?
    
    init(_ dto: CharacterDTO) {
        self.name = dto.name
        self.description = dto.description
        self.id = dto.id
        if let comics = dto.comics {
            self.comics = ItemList(comics)
        }
    }
}

struct ItemList {
    var items: [ItemSummary]?
    
    init(_ dto: ItemListDTO) {
        self.items = []
        dto.items?.forEach { item in
            self.items?.append(ItemSummary(item))
        }
    }
}

struct ItemSummary {
    var name: String?
    
    init(_ dto: ItemSummaryDTO) {
        self.name = dto.name
    }
}
