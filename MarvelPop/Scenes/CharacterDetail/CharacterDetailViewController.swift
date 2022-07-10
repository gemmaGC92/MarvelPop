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
        view.backgroundColor = Tokens.Colors.background
        
        setupTableView()
        setupLoader()
        model?.willAppear()
    }
                                  
    func setupHeaderView() {
        let container = UIView(frame: .zero)
        let disclaimerLabel = UILabel(frame: .zero)
        disclaimerLabel.textColor = Tokens.Colors.secondaryText
        disclaimerLabel.font = .systemFont(ofSize: 10)
        disclaimerLabel.textAlignment = .center
        disclaimerLabel.text = "Data provided by Marvel. © 2014 Marvel"
        [container, headerImage, disclaimerLabel].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        headerImage.contentMode = .scaleAspectFit
        
        container.addSubview(headerImage)
        container.addSubview(disclaimerLabel)
        tableView.tableHeaderView = container
        
        NSLayoutConstraint.activate([
            headerImage.topAnchor.constraint(equalTo: container.topAnchor, constant: Tokens.Margin.medium),
            headerImage.heightAnchor.constraint(equalToConstant: Tokens.Height.detailImage),
            headerImage.widthAnchor.constraint(equalTo: headerImage.heightAnchor),
            headerImage.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            
            disclaimerLabel.topAnchor.constraint(equalTo: headerImage.bottomAnchor, constant: Tokens.Margin.small),
            disclaimerLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: Tokens.Margin.medium),
            disclaimerLabel.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -Tokens.Margin.medium),
            disclaimerLabel.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -Tokens.Margin.large),
            
            container.centerXAnchor.constraint(equalTo: self.tableView.centerXAnchor)
        ])
        
        headerImage.layer.borderWidth = Tokens.Border.image
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

// MARK: - UITableViewDelegate protocol implementation
extension CharacterDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch sections[indexPath.section] {
        case .data(let publicationType):
            model?.showPublication(type: publicationType[indexPath.row].type)
        default:
            break
        }
    }
}

// MARK: - UITableViewDataSource protocol implementation
extension CharacterDetailViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch sections[section] {
        case .events(let data):
            guard let available = data.available, available > 0 else { return "" }
            return "Events"
        case .data:
            return "Publications"
        default:
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch sections[indexPath.section] {
        case .info(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CharacterTableViewCell.identifier) as? CharacterTableViewCell else { return UITableViewCell() }
            cell.bind(title: model.title, subtitle: model.description, subtitleMultiline: true)
            return cell
            
        case .data(let models):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier) as? MainTableViewCell else { return UITableViewCell() }
            let model = models[indexPath.row]
            cell.bind(title: "\(model.name) (\(model.items.available ?? 0))", showDisclosure: true)
            return cell
        
        case .events(let models):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier) as? MainTableViewCell,
                  let name = models.items?[indexPath.row].name else { return UITableViewCell() }
            cell.bind(title: name, showDisclosure: false)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch sections[section] {
        case .info:
            return 1
        case .data(let models):
            return models.count
        case .events(let data):
            return data.items?.count ?? 0
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
}

// MARK: - CharacterDetailViewOutput protocol implementation
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
