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
    var series: ItemList?
    var stories: ItemList?
    var events: ItemList?
    var thumbnailURL: URL?
    
    init(_ dto: CharacterDTO) {
        self.name = dto.name
        self.description = dto.description
        self.id = dto.id
        
        if let comics = dto.comics {
            self.comics = ItemList(comics)
        }
        
        if let series = dto.series {
            self.series = ItemList(series)
        }
        
        if let stories = dto.stories {
            self.stories = ItemList(stories)
        }
        
        if let events = dto.events {
            self.events = ItemList(events)
        }
        
        if let path = dto.thumbnail?.path, let ext = dto.thumbnail?.extension {
            thumbnailURL = URL(string: "\(path).\(ext)")
        }
    }
}

struct ItemList {
    var available: Int?
    var items: [ItemSummary]?
    
    init(_ dto: ItemListDTO) {
        self.items = []
        self.available = dto.available
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
