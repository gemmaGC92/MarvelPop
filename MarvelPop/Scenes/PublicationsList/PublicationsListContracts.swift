//
//  PublicationsListContracts.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 6/7/22.
//

import Foundation

protocol PublicationsListViewInput: AnyObject {
    func willAppear()
    func loadMoreData()
}

protocol PublicationsListViewOutput: AnyObject {
    func update(_ state: PublicationsListViewState)
    func showTitle(_ title: String)
}

enum PublicationsListViewState {
    case loading
    case data([Publication])
}
