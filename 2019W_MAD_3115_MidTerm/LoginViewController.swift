//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailid: UITextField!
    @IBOutlet weak var pass: UITextField!
      @IBOutlet weak var rememberme: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
     let userDefault = UserDefaults.standard
       if let email = userDefault.string(forKey: "Userid"){
            emailid.text =  email
            if let password = userDefault.string(forKey: "userPass"){
                pass.text =  password
            }
            rememberme.isOn = true
    
        }}
        // Do any additional setup after loadi
        // Do any additional setup after loading the view, typically from a nib.
    
  
    
    @IBAction func signin(_ sender: Any)
    {
        let email = emailid.text
        let password = pass.text
        if(email == "aman@gmail.com" && password == "maan"){
            let userDefault = UserDefaults.standard
            if rememberme.isOn{
                userDefault.set(email, forKey: "userEmail")
                userDefault.set(password, forKey: "userPass")
            }
            else {
        userDefault.removeObject(forKey: "userEmail")
                userDefault.removeObject(forKey: "Userpass")
            }
            
    
            let studentVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "StudentEntryViewController") as! StudentEntryViewController;            self.navigationController?.pushViewController(studentVC, animated: true)
        }
    else
    {
self.showAlert(message: "User/Password Invalid")
        }
    
    func showAlert(message:String)
    {
        
        let alert = UIAlertController(title: "alert", message: message, preferredStyle: .alert)
        let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(actionDefault)
        self.present(alert, animated: true)
}


func loadPlistData(){
    if let bundlePath = Bundle.main.path(forResource: "UserPropertyList", ofType: "plist") {
        let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
        let countryList = dictionary!["countries"] as! NSArray
        print(countryList.count)
        
        
}

}
    }}
