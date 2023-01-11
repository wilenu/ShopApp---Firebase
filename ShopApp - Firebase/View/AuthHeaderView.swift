//
//  AuthHeaderView.swift
//  ShopApp - Firebase
//
//  Created by Willy Nuñez on 08-01-23.
//

import UIKit

class AuthHeaderView: UIView {
    
    // MARK: - UI Components
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "Logo")
        return iv
    }()
    
    private let tittleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.text = "Eror"
        return label
    }()
    
    private let subTittleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.text = "Eror"
        return label
    }()
    
    // MARK: - LifeCycle
    init(title: String, subTitle: String) {
        super.init(frame: .zero)
        self.tittleLabel.text = title
        self.subTittleLabel.text = subTitle
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        self.addSubview(logoImageView)
        self.addSubview(tittleLabel)
        self.addSubview(subTittleLabel)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        tittleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTittleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            self.logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            self.logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.logoImageView.widthAnchor.constraint(equalToConstant: 90),
            self.logoImageView.heightAnchor.constraint(equalTo: logoImageView.widthAnchor),
            
            self.tittleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 19),
            self.tittleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.tittleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            self.subTittleLabel.topAnchor.constraint(equalTo: tittleLabel.bottomAnchor, constant: 8),
            self.subTittleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.subTittleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        
        ])
    }
    
}
