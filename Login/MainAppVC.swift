//
//  MainAppVC.swift
//  Login
//
//  Created by Alan Hernandez on 6/26/19.
//  Copyright © 2019 alan Hernandez. All rights reserved.
//

import UIKit

class MainAppVC: UIViewController {
    
    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var greetingLabel: UILabel! 
    
    // in order to recieve the usernameText we have to create a var
    
    var user: User?
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // good unwrap
        guard let unWrappedUser = self.user else  {return}
        
        avatarView.image = unWrappedUser.avatar
        greetingLabel.text = "Hello, \(unWrappedUser.name) You are \(unWrappedUser.age)"

        
    }
    
}

