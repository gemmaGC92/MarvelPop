//
//  HomeViewController.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 16/6/22.
//

import UIKit

class HomeViewController: UIViewController {
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
    var model: HomeViewInput?
    
    var items: [MainSections] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:247/255, green:241/255, blue:227/255,alpha:1.0)
        model?.willAppear()
        setupTableView()
        
        self.navigationItem.title = "MARVEL UNIVERSE"
    }
    
    func setupTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .clear
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.identifier)
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        let header = UIView(frame: .zero)
        let descriptionLabel = UILabel(frame: .zero)
        descriptionLabel.textColor = UIColor(red: 42/255, green: 44/255, blue: 48/255, alpha: 1)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.numberOfLines = 0
        descriptionLabel.text = "Hi here! Nice to meet you. In this app you'll find any information related to the amazing Marvel wold. \n\nLet's start by selecting what do you want to look for:"
        
        header.addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: header.topAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: header.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: header.trailingAnchor, constant: -16),
            descriptionLabel.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -16),
        ])
        
        tableView.tableHeaderView = header
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.updateHeaderFooterTableView()
    }
}

extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier) as? MainTableViewCell else { return UITableViewCell() }
        switch items[indexPath.row] {
        case .characters(let title), .creators(let title), .comics(let title), .stories(let title), .series(let title), .events(let title):
            cell.bind(title: title, subtitle: "")
            
        }
        return cell
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        model?.didSelect(items[indexPath.row])
    }
}

extension HomeViewController: HomeViewOutput {
    func load(data: [MainSections]) {
        self.items = data
    }
}
