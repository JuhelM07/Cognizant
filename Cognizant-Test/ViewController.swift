//
//  ViewController.swift
//  Cognizant-Test
//
//  Created by Juhel on 26/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var user: User?

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTexField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //User object- password and username can be changed from here to whatever
        user = User(username: "test", password: "test")
    }
    
    @IBAction func logInTapped(_ sender: Any) {
        //Validation to check if the username and password matches
        if usernameTextField.text == user?.username && passwordTexField.text == user?.password {
            performSegue(withIdentifier: "segueToTableView", sender: nil)
        }
        
    }
    


}

