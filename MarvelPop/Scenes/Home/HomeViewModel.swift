//
//  HomeViewModel.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation

class HomeViewModel {
    weak var router: HomeViewRouter?
}

extension HomeViewModel: HomeViewInput {
    func onTap() {
        router?.onLetsGoTapped()
    }
}
