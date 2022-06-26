//
//  HomeViewModel.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation

enum MainSections {
    case characters(String)
    case comics(String)
    case creators(String)
    case events(String)
    case series(String)
    case stories(String)
}

class HomeViewModel {
    weak var output: HomeViewOutput?
    weak var router: HomeViewRouter?
}

extension HomeViewModel: HomeViewInput {
    func didSelect(_ item: MainSections) {
        router?.showListOf(item)
    }
    
    func willAppear() {
        output?.load(data: [
            .characters("Characters"),
            .comics("Comics"),
            .creators("Creators"),
            .events("Events"),
            .series("Series"),
            .stories("Stories")
        ])
    }
}
