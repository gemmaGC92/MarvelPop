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
        let stack = UIStackView(arrangedSubviews: [title, subtitle])
        stack.axis = .vertical
        [title, subtitle, stack].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        contentView.addSubview(stack)
    }
    
    func bind(title: String, subtitle: String) {
        self.title.text = title
        self.subtitle.text = subtitle
    }
}
