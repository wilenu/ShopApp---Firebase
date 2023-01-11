//
//  AlertMaganger.swift
//  ShopApp - Firebase
//
//  Created by Willy Nuñez on 10-01-23.
//

import UIKit

class AlertMaganger {
    
    private static func showBasicAlert(on vc: UIViewController, title: String, message: String?){
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            vc.present(alert, animated: true)
            
        }
    }
    
}

// MARK: - Validation Alerts
extension AlertMaganger {
    public static func invalidEmailAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Email invalido", message: "Ingrese un email valido")
    }
    
    public static func invalidPasswordAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Contraseña invalida", message: "Ingrese una contraseña valida")
    }
    
    public static func invalidUsernameAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Usuario invalido", message: "Ingrese un usuario valido")
    }
}

// MARK: - Register Error Alerts
extension AlertMaganger {
    public static func registrationErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Error de registro desconocido", message: nil )
    }
    
    public static func registrationErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Error de registro desconocido", message: "\(error.localizedDescription)")
    }
}

// MARK: - Log In Error Alerts
extension AlertMaganger {
    public static func signinErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Error de inicio de sesión desconocido", message: nil )
    }
    
    public static func signinErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Error de inicio de sesión", message: "\(error.localizedDescription)")
    }
}


// MARK: - Logout Error Alerts
extension AlertMaganger {
      
    public static func logoutError(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Error de inicio de sesión desconocido", message: "\(error.localizedDescription)")
    }
}

// MARK: - Forgot Password Error Alerts
extension AlertMaganger {
    
    public static func passwordResetSend(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Restablecimiento de contraseña enviado", message: nil)
    }
      
    public static func errorSendingPasswordReset(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Error al enviar restablecimiento de contraseña", message: "\(error.localizedDescription)")
    }
}

// MARK: - Fetching User Error Alerts
extension AlertMaganger {
    
    public static func fetchingUsererror(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Error desconocido al obtener el usuario", message: nil)
    }
      
    public static func fetchingUserError(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Error al obtener usuario", message: "\(error.localizedDescription)")
    }
}
