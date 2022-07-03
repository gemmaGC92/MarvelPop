//
//  MainTableViewCell.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 16/6/22.
//

import Foundation
import UIKit

class MainTableViewCell: UITableViewCell {
    static let identifier = "MainTableViewCell"
    let title = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.systemFont(ofSize: 16)
        title.textColor = Tokens.Colors.primaryText
        title.numberOfLines = 0
        
        contentView.addSubview(title)
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: Tokens.Margin.medium),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Tokens.Margin.medium),
            title.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -Tokens.Margin.medium),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -Tokens.Margin.medium),
        ])
        
        selectionStyle = .none
        separatorInset = UIEdgeInsets(top: 0, left: Tokens.Margin.medium, bottom: 0, right: 0)
    }
    
    public func bind(title: String, showDisclosure: Bool = true) {
        self.title.text = title
        self.accessoryType = showDisclosure ? .disclosureIndicator : .none
    }
}
