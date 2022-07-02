//
//  CharactersViewController.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation
import UIKit

class CharactersViewController: UIViewController {
    let loadAnimation = LottieWrapperView(named: "loading")
    let searchBar = UISearchBar(frame: .zero)
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
    var model: CharactersViewInput?
    
    var items: [MarvelCharacter] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:247/255, green:241/255, blue:227/255,alpha:1.0)
        
        setupViews()
        setupLoader()
        model?.willAppear()
        
        navigationItem.title = "MARVEL CHARACTERS"
    }
    
    func setupLoader() {
        loadAnimation.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loadAnimation)
        
        NSLayoutConstraint.activate([
            loadAnimation.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loadAnimation.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loadAnimation.heightAnchor.constraint(equalToConstant: 200),
            loadAnimation.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func setupViews() {
        [searchBar, tableView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
    
        searchBar.delegate = self
        searchBar.placeholder = "Search..."
        searchBar.tintColor = UIColor(red: 33/255, green: 140/255, blue: 116/255, alpha: 1)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .clear
        tableView.register(CharacterTableViewCell.self, forCellReuseIdentifier: CharacterTableViewCell.identifier)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            tableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}

extension CharactersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CharacterTableViewCell.identifier) as? CharacterTableViewCell else { return UITableViewCell() }
        cell.bind(title: items[indexPath.row].name ?? "", subtitle: items[indexPath.row].description)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
}

extension CharactersViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        model?.didSelect(indexPath)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let threshold: CGFloat = 100
        let current = scrollView.contentOffset.y + scrollView.bounds.height
        let totalHeight = scrollView.contentSize.height
        
        if totalHeight - current < threshold {
            model?.loadMoreData()
        }
    }
}

extension CharactersViewController: CharactersViewOutput {
    func update(_ state: CharactersViewState) {
        if loadAnimation.isPlaying {
            loadAnimation.stop()
        }
        
        switch state {
        case .loading:
            loadAnimation.start()
            tableView.isHidden = true
        case .data(let items), .search(let items):
            self.items = items
            tableView.isHidden = false
        }
    }
}

extension CharactersViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            model?.exitSearchMode()
        } else {
            model?.search(searchText)
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        model?.exitSearchMode()
    }
}
