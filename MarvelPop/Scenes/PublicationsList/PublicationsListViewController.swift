//
//  PublicationsListViewController.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 6/7/22.
//

import Foundation
import UIKit

class PublicationsListViewController: UIViewController {
    let loadAnimation = LottieWrapperView(named: "loading")
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
    var model: PublicationsListViewInput?
    
    var items: [Publication] = [] {
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
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .clear
        tableView.register(CharacterTableViewCell.self, forCellReuseIdentifier: CharacterTableViewCell.identifier)
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension PublicationsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CharacterTableViewCell.identifier) as? CharacterTableViewCell else { return UITableViewCell() }
        let item = items[indexPath.row]
        cell.bind(title: item.title ?? "", subtitle: item.description ?? "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
}

extension PublicationsListViewController: UITableViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let threshold: CGFloat = 50
        let current = scrollView.contentOffset.y + scrollView.bounds.height
        let totalHeight = scrollView.contentSize.height
        
        if totalHeight - current < threshold {
            model?.loadMoreData()
        }
    }
}


extension PublicationsListViewController: PublicationsListViewOutput {
    func showTitle(_ title: String) {
        navigationItem.title = title
    }
    
    func update(_ state: PublicationsListViewState) {
        if loadAnimation.isPlaying {
            loadAnimation.stop()
        }
        switch state {
        case .loading:
            loadAnimation.start()
            tableView.isHidden = true
        case .data(let items):
            self.items = items
            tableView.isHidden = false
        }
    }
}
