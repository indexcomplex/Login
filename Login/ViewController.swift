//
//  ViewController.swift
//  Login
//
//  Created by Alan Hernandez on 6/26/19.
//  Copyright © 2019 alan Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextfield : UITextField!
    @IBOutlet weak var passwordTextfield : UITextField!
    
let correctUsername = "alan hernandez"
let correctPassword = "Password"
    
    
    
    // we want an action to happen when the button is tapped
    @IBAction func didTapLogin(){
        
        guard
            usernameTextfield.text == correctUsername,
            passwordTextfield.text == correctPassword
            else { incorrectLoginAlert(); return }
        
     
        let deadLine = DispatchTime.now() + .seconds(3)
        
        DispatchQueue.main.asyncAfter(deadline: deadLine) {
            print("login")
            
            let user = User(name: "alan", age: 26)
            
            
            
            // call self because we're in a closure
            // call the most immediate thing "object in Class? yes! say self!"
            self.performSegue(withIdentifier: "segue.Main.loginToMainApp", sender: self.usernameTextfield.text)
        }
        
        
    }
    
    
    func incorrectLoginAlert(){
        let messsage = "Incorrect User or Pass, please try again"
        let alert = UIAlertController(title: "Login Failed", message: messsage, preferredStyle: .alert)
        
        let dismissAction = UIAlertAction(title: "Dismiss", style: .cancel)
        
        alert.addAction(dismissAction)
        
        present(alert, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        // if desitination is Main App VC we're gonna et it to mainAppVC
        if let mainAppVC = segue.destination as? MainAppVC, let username = sender as? String {
            mainAppVC.username = username
            // grabbing username from MainAppVC and setting it to the one created on line 35
        }
        
        
        
    }
    
    
    

  


}

