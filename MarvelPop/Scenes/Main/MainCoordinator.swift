//
//  MainCoordinator.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 17/6/22.
//

import Foundation
import UIKit

class MainCoordinator {
    let window: UIWindow?
    let client: MarvelAPIClient
    let factory: Factory
    var navigator: UINavigationController?
    
    init(rootWindow: UIWindow?, client: MarvelAPIClient, factory: Factory) {
        self.client = client
        self.factory = factory
        self.window = rootWindow
    }
    
    public func start() -> UIViewController {
        self.navigator = UINavigationController(rootViewController: factory.home(router: self))
        guard let nav = navigator else {
            return UIViewController()
        }
        return nav
    }
    
    func openCharactersList() {
        let vc = factory.characters(client)
        navigator?.pushViewController(vc, animated: true)
    }
}

extension MainCoordinator: HomeViewRouter {
    func showListOf(_ item: MainSections) {
        switch item {
        case .characters:
            openCharactersList()
        case .comics(let string):
            break
        case .creators(let string):
            break
        case .events(let string):
            break
        case .series(let string):
            break
        case .stories(let string):
            break
        }
    }
}
