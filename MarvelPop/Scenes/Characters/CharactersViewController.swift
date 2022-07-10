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
            emptyAnimation.heightAnchor.constraint(equalToConstant: Tokens.Height.animation),
            noResults.topAnchor.constraint(equalTo: emptyAnimation.bottomAnchor, constant: Tokens.Margin.medium),
            noResults.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: Tokens.Margin.large),
            noResults.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -Tokens.Margin.large),
            noResults.bottomAnchor.constraint(equalTo: container.bottomAnchor)
        ])
        
        noResults.textColor = Tokens.Colors.primaryText
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
        view.backgroundColor = Tokens.Colors.background
        
        setupViews()
        setupLoader()
        model?.willAppear()
        
        navigationItem.title = "MARVEL CHARACTERS"
        navigationItem.hidesBackButton = true
    }
    
    func setupLoader() {
        loadAnimation.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loadAnimation)
        
        NSLayoutConstraint.activate([
            loadAnimation.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loadAnimation.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loadAnimation.heightAnchor.constraint(equalToConstant: Tokens.Height.animation),
            loadAnimation.widthAnchor.constraint(equalToConstant: Tokens.Height.animation)
        ])
    }
    
    func setupViews() {
        [searchBar, tableView, noResultsView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
    
        searchBar.delegate = self
        searchBar.placeholder = "Search..."
        searchBar.tintColor = Tokens.Colors.accent
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .clear
        tableView.keyboardDismissMode = .onDrag
        tableView.register(CharacterTableViewCell.self, forCellReuseIdentifier: CharacterTableViewCell.identifier)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            tableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            noResultsView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: Tokens.Margin.xlarge),
            noResultsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            noResultsView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        setupHeaderView()
    }
    
    func setupHeaderView() {
        let container = UIView(frame: .zero)
        let disclaimerLabel = UILabel(frame: .zero)
        disclaimerLabel.textColor = Tokens.Colors.secondaryText
        disclaimerLabel.font = .systemFont(ofSize: 10)
        disclaimerLabel.textAlignment = .center
        disclaimerLabel.text = "Data provided by Marvel. © 2014 Marvel"
        
        [container, disclaimerLabel].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        container.addSubview(disclaimerLabel)
        tableView.tableHeaderView = container
        
        NSLayoutConstraint.activate([
            disclaimerLabel.topAnchor.constraint(equalTo: container.topAnchor, constant: Tokens.Margin.small),
            disclaimerLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: Tokens.Margin.medium),
            disclaimerLabel.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -Tokens.Margin.medium),
            disclaimerLabel.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -Tokens.Margin.medium),
            container.centerXAnchor.constraint(equalTo: self.tableView.centerXAnchor)
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.updateHeaderFooterTableView()
    }
    
    @objc func performSearch(searchBar: UISearchBar) {
        guard let searchText = searchBar.text else { return }
        if searchText.isEmpty {
            model?.exitSearchMode()
        } else {
            model?.search(searchText)
        }
    }
}

// MARK: - UITableViewDataSource protocol implementation
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

// MARK: - UITableViewDelegate protocol implementation
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

// MARK: - CharactersViewOutput protocol implementation
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

// MARK: - UISearchBarDelegate protocol implementation
extension CharactersViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(performSearch), object: searchBar)
        self.perform(#selector(performSearch), with: searchBar, afterDelay: 0.5)
    }
}
