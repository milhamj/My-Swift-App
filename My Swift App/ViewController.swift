//
//  ViewController.swift
//  My Swift App
//
//  Created by nakama on 10/19/18.
//  Copyright © 2018 Tokopedia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username.addTarget(self, action: #selector(usernameDidChange(_:)), for: .editingChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func usernameDidChange(_ textField: UITextField) {
        if textField.text!.count < 3 {
            login.isEnabled = false
            login.backgroundColor = #colorLiteral(red: 0.7647058824, green: 0.7647058824, blue: 0.7647058824, alpha: 1)
        } else {
            login.isEnabled = true
            login.backgroundColor = #colorLiteral(red: 0.2588235294, green: 0.7098039216, blue: 0.2862745098, alpha: 1)
        }
    }
    
    @IBAction func loginClicked(_ sender: UIButton){
        if sender.isEnabled, !(username.text?.isEmpty ?? true), !(password.text?.isEmpty ?? true) {
            titleLabel.text = "Success cuyyy"
        }
    }
}

