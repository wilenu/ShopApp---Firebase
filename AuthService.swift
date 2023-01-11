//
//  AuthService.swift
//  ShopApp - Firebase
//
//  Created by Willy Nuñez on 10-01-23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class AuthService {
    
    public static let shared = AuthService()
    
    private init() {
    }
    
    
    /// A metod to register the user
    /// - Parameters:
    ///    - userRequest: The user information (email, password, username)
    ///    - completion:  A completion with two values...
    ///    - Bool: wasRegistered - Determines if the user was resgitered and save in the database correctly
    ///    - Error?: An optional error if firebase provides once
    public func registerUser(whith userRequest: RegisterUserRequest, completion: @escaping (Bool, Error?)->Void) {
        let username = userRequest.username
        let email = userRequest.email
        let password = userRequest.password
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(false, error)
                return
            }
            
            guard let resultUser = result?.user else {
                completion(false, nil)
                return
            }
            
            let db = Firestore.firestore()
            
            db.collection("users")
                .document(resultUser.uid)
                .setData([
                    "username": username,
                    "email": email
                ]) { error in
                    if let error = error {
                        completion(false, error)
                        return
                    }
                    
                    completion(true, nil)
                }
        }
    }
}

// MARK: - Explicación
// En esta clase se hace lo siguiente:
// 1 - se crea un usuario con el codigo de la linea 31 a 35 y se registra en firebase auth
// 2 - se crea un guard let para guardar los datos ingresados del usuario si son correctos, sino arrojara un error.
// 3 - una vez tenemos los datos correctos procedemos guardamos los datos en Firestore.
// 4 - se registra el user id y se completa la clase con un bool true para confirmar que todo esta correcto y decimos que no hay error.
