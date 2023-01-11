//
//  CustomButton.swift
//  ShopApp - Firebase
//
//  Created by Willy Nuñez on 09-01-23.
//

import UIKit

class CustomButton: UIButton {
    
    enum FontSize {
        case big
        case medium
        case small
    }
    
    init(title: String, hasBakcground: Bool = false, fontSize: FontSize, texcolor: UIColor) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 15
        self.layer.masksToBounds = true
        self.setTitleColor(texcolor, for: .normal)
        
        self.backgroundColor = hasBakcground ? .systemPurple : .clear
        
        /*let titleColor: UIColor = hasBakcground ? .white : .systemPurple
        self.setTitleColor(titleColor, for: .normal)*/
        
        switch fontSize {
        case .big:
            self.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        case .medium:
            self.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        case .small:
            self.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
