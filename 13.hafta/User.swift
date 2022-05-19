//
//  User.swift
//  13.hafta
//
//  Created by İSMAİL AÇIKYÜREK on 18.05.2022.
//

import Foundation
import UIKit

class User {
  
    var name : String?
    var surname : String?
    var email : String?
    var username : String?
    var password : String?
    init() {
        
    }
    init(name : String,surname : String,email : String,username : String,password : String) {
        self.name = name
        self.surname = surname
        self.email = email
        self.username = username
        self.password = password
    }
  
    func kaydet(name : String,surname : String,email : String,username : String,password : String) {
        //bu fonksiyonda kullanıcın girdiği bilgileri USER DEFAULTSA kaydediyoruz.
        let userdefaults = UserDefaults.standard
        userdefaults.set(name, forKey: "name")
        userdefaults.set(surname, forKey: "surname")
        userdefaults.set(email, forKey: "email")
        userdefaults.set(username, forKey: "username")
        userdefaults.set(password, forKey: "password")
    }

}
