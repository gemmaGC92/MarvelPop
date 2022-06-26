//
//  HomeContracts.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation

protocol HomeViewInput: AnyObject {
    func willAppear()
    func didSelect(_ item: MainSections)
}

protocol HomeViewOutput: AnyObject {
    func load(data: [MainSections])
}

protocol HomeViewRouter: AnyObject {
    func showListOf(_ item: MainSections)
}
