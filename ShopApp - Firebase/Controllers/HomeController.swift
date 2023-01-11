//
//  HomeController.swift
//  ShopApp - Firebase
//
//  Created by Willy Nuñez on 08-01-23.
//

import UIKit

class HomeController: UIViewController {
    // MARK: - UI Components
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.text = "Loading..."
        label.numberOfLines = 2
        return label
    }()
    

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.label.text = "Willy Nuñez\nwilenu@gmail.com"
    }
    
    
    // MARK: - UI Setup
        private func setupUI() {
            self.view.backgroundColor = .systemBackground
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cerrar sesión", style: .plain, target: self, action: #selector(didTapLogout))
           
            self.view.addSubview(label)
            self.label.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                ]) 

        }
    // MARK: - Selectors
        @objc private func didTapLogout() {
            
        }
}



