//
//  IdentityProvider.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 17/6/22.
//

import Foundation

class IdentityProvider {
    let apiKey: String
    
    init(key: String) {
        self.apiKey = key
    }
    
    func refreshHeaders() -> [String: String] {
        let headers = [
                "apikey" : apiKey,
                "Content-Type": "application/json; charset=utf8"
            ]

        return headers
    }
}
