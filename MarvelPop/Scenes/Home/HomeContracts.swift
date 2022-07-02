//
//  HomeContracts.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation

protocol HomeViewInput: AnyObject {
    func onTap()
}

protocol HomeViewRouter: AnyObject {
    func onLetsGoTapped()
}
