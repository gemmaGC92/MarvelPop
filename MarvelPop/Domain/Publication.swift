//
//  Publication.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 6/7/22.
//

import Foundation

enum PublicationType: String {
    case comics
    case stories
    case series
    
    var title: String {
        switch self {
        case .comics:
            return "Comics List"
        case .stories:
            return "Stories List"
        case .series:
            return "Series List"
        }
    }
}

struct Publication {
    var id: Int?
    var title: String?
    var description: String?
}

extension Publication {
    init(_ dto: PublicationDTO) {
        self.id = dto.id
        self.title = dto.title
        self.description = dto.description
    }
}
