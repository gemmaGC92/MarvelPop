//
//  CharactersViewController.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation
import UIKit

class CharactersViewController: UIViewController {
    lazy var noResultsView: UIView = {
        let container = UIView(frame: .zero)
        let noResults = UILabel(frame: .zero)
        
        
        [container, noResults, emptyAnimation].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        container.addSubview(noResults)
        container.addSubview(emptyAnimation)
        
        NSLayoutConstraint.activate([
            emptyAnimation.topAnchor.constraint(equalTo: container.topAnchor),
            emptyAnimation.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            emptyAnimation.heightAnchor.constraint(equalToConstant: 200),
            noResults.topAnchor.constraint(equalTo: emptyAnimation.bottomAnchor, constant: 16),
            noResults.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 24),
            noResults.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -24),
            noResults.bottomAnchor.constraint(equalTo: container.bottomAnchor)
        ])
        
        noResults.textAlignment = .center
        noResults.numberOfLines = 0
        noResults.text = "Oops, seems like there are no results for your search 😖.\nTry again with another term."
        
        return container
    }()
    
    let emptyAnimation = LottieWrapperView(named: "empty-search")
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
        [searchBar, tableView, noResultsView].forEach {
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
            
            noResultsView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 32),
            noResultsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            noResultsView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
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
            noResultsView.isHidden = true
            
        case .data(let items):
            self.items = items
            tableView.isHidden = false
            noResultsView.isHidden = true
            
        case .search(let items):
            self.items = items
            if items.count > 0 {
                tableView.isHidden = false
                noResultsView.isHidden = true
            } else {
                tableView.isHidden = true
                noResultsView.isHidden = false
                emptyAnimation.start()
            }
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
