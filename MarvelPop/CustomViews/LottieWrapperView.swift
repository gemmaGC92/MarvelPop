//
//  LottieWrapperView.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 3/7/22.
//

import UIKit
import Lottie

class LottieWrapperView: UIView {
    
    private var animationView: AnimationView
    
    init(named: String) {
        self.animationView = AnimationView(name: named)
        super.init(frame: .zero)
        animationView.loopMode = .loop
        animationView.animationSpeed = 2.0
        animationView.frame = self.bounds
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.topAnchor.constraint(equalTo: topAnchor),
            animationView.leadingAnchor.constraint(equalTo: leadingAnchor),
            animationView.trailingAnchor.constraint(equalTo: trailingAnchor),
            animationView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func start() {
        animationView.play()
    }
    
    func stop() {
        animationView.stop()
    }
    
    var isPlaying: Bool {
        return animationView.isAnimationPlaying
    }
}
