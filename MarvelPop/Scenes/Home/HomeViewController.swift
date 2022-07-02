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
        view.backgroundColor = UIColor(red:247/255, green:241/255, blue:227/255,alpha:1.0)
        setupViews()
    }
    
    func setupViews() {
        [logoImage, descriptionLabel, continueBtn].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        logoImage.contentMode = .scaleAspectFit
        
        descriptionLabel.textColor = UIColor(red: 42/255, green: 44/255, blue: 48/255, alpha: 1)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        descriptionLabel.text = "Hi here!👋🏼 Nice to meet you!\n\nIn this app you'll find any information related to the amazing Marvel Comics wold.\n\n\nTap the button and start exploring all the characters and it's information."
        
        continueBtn.setTitle("Let's go!", for: .normal)
        continueBtn.backgroundColor = UIColor(red: 33/255, green: 140/255, blue: 116/255, alpha: 1)
        continueBtn.setTitleColor(.white, for: .normal)
        continueBtn.layer.cornerRadius = 8
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.heightAnchor.constraint(equalToConstant: 200),
            
            descriptionLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 32),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            
            continueBtn.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 40),
            continueBtn.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
            continueBtn.trailingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor),
            continueBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        continueBtn.addTarget(self, action: #selector(onTap), for: .touchUpInside)
    }
    
    @objc func onTap() {
        model?.onTap()
    }
}
