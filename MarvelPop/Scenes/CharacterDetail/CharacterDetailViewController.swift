//
//  CharacterDetailViewController.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 26/6/22.
//

import Foundation
import UIKit

class CharacterDetailViewController: UIViewController {
    var model: CharacterDetailViewInput?
   
    let headerImage = UIImageView(frame: .zero)
    let loader = UIActivityIndicatorView(style: .medium)
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
    
    var sections: [CharacterSections] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:247/255, green:241/255, blue:227/255,alpha:1.0)
        
        setupTableView()
        setupLoader()
        model?.willAppear()
    }
                                  
    func setupHeaderView() {
        let container = UIView(frame: .zero)
        [container, headerImage].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        headerImage.contentMode = .scaleAspectFit
        
        container.addSubview(headerImage)
        tableView.tableHeaderView = container
        
        NSLayoutConstraint.activate([
            headerImage.topAnchor.constraint(equalTo: container.topAnchor, constant: 16),
            headerImage.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -24),
            headerImage.heightAnchor.constraint(equalToConstant: 150),
            headerImage.widthAnchor.constraint(equalTo: headerImage.heightAnchor),
            headerImage.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            container.centerXAnchor.constraint(equalTo: self.tableView.centerXAnchor)
        ])
        
        headerImage.layer.borderWidth = 5.0
        headerImage.layer.borderColor = UIColor.white.cgColor
    }
    
    func setupLoader() {
        loader.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loader)
        
        NSLayoutConstraint.activate([
            loader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loader.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func setupTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .clear
        tableView.register(CharacterTableViewCell.self, forCellReuseIdentifier: CharacterTableViewCell.identifier)
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.identifier)
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.updateHeaderFooterTableView()
    }
}

extension CharacterDetailViewController: UITableViewDelegate {
    
}

extension CharacterDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch sections[indexPath.section] {
        case .info(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CharacterTableViewCell.identifier) as? CharacterTableViewCell else { return UITableViewCell() }
            cell.bind(title: model.title, subtitle: model.description, subtitleMultiline: true)
            return cell
        case .comics(let models):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier) as? MainTableViewCell else { return UITableViewCell() }
            cell.bind(title: models.items?[indexPath.row].name ?? "", showDisclosure: false)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch sections[section] {
        case .info:
            return 1
        case .comics(let models):
            return models.items?.count ?? 0
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
}

extension CharacterDetailViewController: CharacterDetailViewOutput {
    func showImage(_ img: UIImage) {
        headerImage.image = img
        setupHeaderView()
    }
    
    func update(_ state: CharacterDetailViewState) {
        if loader.isAnimating {
            loader.stopAnimating()
        }
        switch state {
        case .loading:
            loader.startAnimating()
        case .data(let characterSections):
            self.sections = characterSections
        }
    }
}
