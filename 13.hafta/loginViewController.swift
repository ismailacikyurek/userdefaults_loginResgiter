//
//  logiNViewController.swift
//  13.hafta
//
//  Created by İSMAİL AÇIKYÜREK on 18.05.2022.
//

import UIKit

class loginViewController: UIViewController {
    

    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtpPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func login(_ sender: Any) {
        let registeredUsername = UserDefaults.standard.string(forKey: "username") //userdefaultsa kkayıtlı kullanıcı adı
        let kregisteredPassword = UserDefaults.standard.string(forKey: "password")//userdefaultsa kkayıtlı kullanıcı parola
        
        if let userName = txtUsername.text, let password = txtpPassword.text {
            if userName == registeredUsername && password == kregisteredPassword { //eğer eşleşiyorsa giriş başarılı
                mesajShow(title: "succes", message: "login success")
            } else {
                mesajShow(title: "error", message: "password or usarname wrong")
            }
        }
        
   
        
}
    
    
    func mesajShow(title : String, message : String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let ok = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
    
}
