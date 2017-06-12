//
//  ViewController.swift
//  Postcard
//
//  Created by evida on 8/6/17.
//  Copyright © 2017 evida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet var messageLabelRev: UIView!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(_ sender: UIButton) {
        // Comentarios para hacer un commit de prueba
        messageLabel.isHidden = false
        nameLabel.isHidden = false
        messageLabelRev.isHidden = false
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        messageLabel.textColor = UIColor.red
        nameLabel.textColor = UIColor.blue
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", for: UIControlState.normal)
    }

}

