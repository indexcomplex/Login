//
//  MainAppVC.swift
//  Login
//
//  Created by Alan Hernandez on 6/26/19.
//  Copyright © 2019 alan Hernandez. All rights reserved.
//

import UIKit

class MainAppVC: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel! 
    
    // in order to recieve the usernameText we have to create a var
    
    var username: String?
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // good unwrap
        guard let unWrappedUsername = username else  {return}
        greetingLabel.text = "Hello, \(unWrappedUsername)"

        
    }
    
}

