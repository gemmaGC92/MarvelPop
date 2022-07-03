//
//  HomeViewController.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 16/6/22.
//

import UIKit

class HomeViewController: UIViewController {
    let descriptionLabel = UILabel(frame: .zero)
    let logoImage = UIImageView(image: UIImage(named: "marvel-logo"))
    let continueBtn = UIButton(frame: .zero)
    
    var model: HomeViewInput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Tokens.Colors.background
        setupViews()
    }
    
    func setupViews() {
        [logoImage, descriptionLabel, continueBtn].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        logoImage.contentMode = .scaleAspectFit
        
        descriptionLabel.textColor = Tokens.Colors.primaryText
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        descriptionLabel.text = "Hi there!👋🏼 Nice to meet you!\n\nIn this app you'll find a lot of information related to the amazing Marvel Comics wold.\n\nTap the button and start exploring all the characters and its information."
        
        continueBtn.setTitle("Let's go!", for: .normal)
        continueBtn.backgroundColor = Tokens.Colors.accent
        continueBtn.setTitleColor(.white, for: .normal)
        continueBtn.layer.cornerRadius = Tokens.Radius.buttton
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Tokens.Margin.xlarge),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.heightAnchor.constraint(equalToConstant: Tokens.Height.homeLogo),
            
            descriptionLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: Tokens.Margin.xlarge),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Tokens.Margin.large),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Tokens.Margin.large),
            
            continueBtn.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: Tokens.Margin.xxlarge),
            continueBtn.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
            continueBtn.trailingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor),
            continueBtn.heightAnchor.constraint(equalToConstant: Tokens.Height.button)
        ])
        
        continueBtn.addTarget(self, action: #selector(onTap), for: .touchUpInside)
    }
    
    @objc func onTap() {
        model?.onTap()
    }
}
