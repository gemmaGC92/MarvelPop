//
//  CharacterTableViewCell.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation
import UIKit

class CharacterTableViewCell: UITableViewCell {
    static let identifier = "CharacterTableViewCell"
    
    let title = UILabel()
    let subtitle = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        title.font = UIFont.boldSystemFont(ofSize: 16)
        title.textColor = Tokens.Colors.primaryText
        subtitle.font = UIFont.systemFont(ofSize: 14)
        subtitle.textColor = Tokens.Colors.primaryText
        subtitle.numberOfLines = 2
        
        [title, subtitle].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: Tokens.Margin.medium),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Tokens.Margin.medium),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -Tokens.Margin.medium),
            
            subtitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: Tokens.Margin.xsmall),
            subtitle.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            subtitle.trailingAnchor.constraint(equalTo: title.trailingAnchor),
            subtitle.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -Tokens.Margin.medium)
        ])
        
        separatorInset = UIEdgeInsets(top: 0, left: Tokens.Margin.medium, bottom: 0, right: 0)
        selectionStyle = .none
    }
    
    func bind(title: String, subtitle: String?, subtitleMultiline: Bool = false) {
        self.title.text = title
        self.subtitle.text = subtitle != "" ? subtitle : nil
        
        if subtitleMultiline {
            self.subtitle.numberOfLines = 0
        }
    }
}
