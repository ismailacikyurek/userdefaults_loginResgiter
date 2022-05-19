//
//  ViewController.swift
//  13.hafta
//
//  Created by İSMAİL AÇIKYÜREK on 18.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtsurname: UITextField!
    @IBOutlet weak var txtemail: UITextField!
    @IBOutlet weak var txtpasword: UITextField!
    @IBOutlet weak var txtusernam: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    
        
        
        
    }

    @IBAction func kaydet(_ sender: Any) {
        
        if let name = txtname.text, let surname = txtsurname.text,let email = txtemail.text, let username = txtusernam.text,let password = txtpasword.text {
            
            if name == "" || surname == "" || email == "" || username == "" || password == "" { //kullanıcınınb boş bıraktığı kutu varsa
                mesajShow(title: "HATA", message: " boşluklarını doldurunuz") //hata goster
            } else {
                mesajShow(title: "saved", message: "saved")
                var user = User()
                user.kaydet(name: name, surname: surname, email: email, username: username, password: password) //user sınıfında ki fonskiyon
                
                
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

