//
//  RegisterController.swift
//  ShopApp - Firebase
//
//  Created by Willy Nuñez on 08-01-23.
//

import UIKit

class RegisterController: UIViewController {
    
    // MARK: - UI Components
    private let headerView = AuthHeaderView(title: "Registrate", subTitle: "Crea tu cuenta")
    private let usernameField = CustomTextField(fieldType: .username)
    private let emailField = CustomTextField(fieldType: .email)
    private let passwordField = CustomTextField(fieldType: .password)
    private let signUpButton = CustomButton(title: "Crear Cuenta", hasBakcground: true, fontSize: .big, texcolor: .white)
    private let signInButton = CustomButton(title: "Ya tienes una cuenta? Inicia sesión", fontSize: .medium, texcolor: .systemGray)
    
    /*private let termsTextView: UITextView = {
     let tv = UITextView()
     tv.text = "Al crear una cuenta, acepta nuestros Términos y Condiciones y reconoce que ha leído nuestra Política de Privacidad"
     tv.backgroundColor = .clear
     tv.textColor = .label
     tv.textAlignment = .justified
     tv.isSelectable = true
     tv.isEditable = false
     tv.isScrollEnabled = false
     return tv
     }()*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.signUpButton.addTarget(self, action: #selector(didTapSignUp), for: .touchUpInside)
        self.signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //Aca ocultamos el Navigation Bar
        self.navigationController?.navigationBar.isHidden = true
        
    }
    // MARK: - UI Setup
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        self.view.addSubview(headerView)
        self.view.addSubview(usernameField)
        self.view.addSubview(emailField)
        self.view.addSubview(passwordField)
        self.view.addSubview(signUpButton)
        //self.view.addSubview(termsTextView)
        self.view.addSubview(signInButton)
        
        
        self.headerView.translatesAutoresizingMaskIntoConstraints = false
        self.usernameField.translatesAutoresizingMaskIntoConstraints = false
        self.emailField.translatesAutoresizingMaskIntoConstraints = false
        self.passwordField.translatesAutoresizingMaskIntoConstraints = false
        self.signUpButton.translatesAutoresizingMaskIntoConstraints = false
        //self.termsTextView.translatesAutoresizingMaskIntoConstraints = false
        self.signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            self.headerView.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.headerView.heightAnchor.constraint(equalToConstant: 222),
            
            self.usernameField.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 12),
            self.usernameField.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.usernameField.heightAnchor.constraint(equalToConstant: 55),
            self.usernameField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.emailField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 20),
            self.emailField.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.emailField.heightAnchor.constraint(equalToConstant: 55),
            self.emailField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20),
            self.passwordField.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.passwordField.heightAnchor.constraint(equalToConstant: 55),
            self.passwordField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.signUpButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 20),
            self.signUpButton.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.signUpButton.heightAnchor.constraint(equalToConstant: 55),
            self.signUpButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            /* self.termsTextView.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 6),
             self.termsTextView.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
             self.termsTextView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80),*/
            
            self.signInButton.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 10),
            self.signInButton.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor),
            self.signInButton.heightAnchor.constraint(equalToConstant: 40),
            self.signInButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85)
            
        ])
    }
    
    // MARK: - SELECTOR
    @objc func didTapSignUp(){
        print("DEBUG PRINT:", "didTapSignUp")
        
        /*let webViewer = WebViewerController(with: "https://banco.santander.cl/personas")
         
         let nav = UINavigationController(rootViewController: webViewer)
         self.present(nav, animated: true, completion: nil)
         // let vc = LoginController ()
         //vc.modalPresentationStyle = .fullScreen
         //self.present(vc, animated: false, completion: nil)
         }*/
    }
    @objc func didTapSignIn(){
        self.navigationController?.popViewController(animated: true)
    }
}

