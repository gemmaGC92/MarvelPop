//
//  Tokens.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 3/7/22.
//

import UIKit

public enum Tokens {

    public enum Colors {
        public static let background = UIColor.custom(secureName: "background")
        public static let accent = UIColor.custom(secureName: "accent")
        public static let primaryText = UIColor.custom(secureName: "primary-text")
    }

    public enum Margin {
        public static let xsmall: CGFloat = 4
        public static let small: CGFloat = 8
        public static let medium: CGFloat = 16
        public static let large: CGFloat = 24
        public static let xlarge: CGFloat = 32
        public static let xxlarge: CGFloat = 32
    }
    
    public enum Radius {
        public static let buttton: CGFloat = 8
    }
    
    public enum Border {
        public static let image: CGFloat = 5
    }
    
    public enum Height {
        public static let button: CGFloat = 50
        public static let homeLogo: CGFloat = 200
        public static let animation: CGFloat = 200
        public static let detailImage: CGFloat = 150
    }
}

extension UIColor {
    static func custom(secureName: String) -> UIColor {
        UIColor(named: secureName, in: Bundle.main, compatibleWith: .none) ?? .magenta
    }
}
