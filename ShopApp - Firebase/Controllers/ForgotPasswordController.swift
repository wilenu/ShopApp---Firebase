//
//  ForgotPasswordController.swift
//  ShopApp - Firebase
//
//  Created by Willy Nuñez on 08-01-23.
//

import UIKit

class ForgotPasswordController: UIViewController {
    
    // MARK: - UI Components
    
    private let headerView = AuthHeaderView(title: "Recuperar Contraseña", subTitle: "Restablece tu contraseña")
    private let emailField = CustomTextField(fieldType: .email)
    private let resetPasswordButton = CustomButton(title: "Recuperar",hasBakcground: true, fontSize: .big, texcolor: .white)
    
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.resetPasswordButton.addTarget(self, action: #selector(didTapforgotPassword), for: .touchUpInside)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //Aca mostramos el Navigation Bar
        self.navigationController?.navigationBar.isHidden = false
    }
    
    // MARK: - Setup UI
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        self.view.addSubview(headerView)
        self.view.addSubview(emailField)
        self.view.addSubview(resetPasswordButton)
        
        self.headerView.translatesAutoresizingMaskIntoConstraints = false
        self.emailField.translatesAutoresizingMaskIntoConstraints = false
        self.resetPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.headerView.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.headerView.heightAnchor.constraint(equalToConstant: 222),
            
            self.emailField.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 20),
            self.emailField.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.emailField.heightAnchor.constraint(equalToConstant: 55),
            self.emailField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.resetPasswordButton.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20),
            self.resetPasswordButton.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.resetPasswordButton.heightAnchor.constraint(equalToConstant: 55),
            self.resetPasswordButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85)
        ])
    }
    
    // MARK: - Selectors
    @objc func didTapforgotPassword(){
        guard let email = self.emailField.text, !email.isEmpty else { return }
        // TODO: - EMAIL VALIDATION
    }
    
}

 

