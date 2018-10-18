//
//  ViewController.swift
//  ARAlertViewController
//
//  Created by ar.warraich@outlook.com on 10/18/2018.
//  Copyright (c) 2018 ar.warraich@outlook.com. All rights reserved.
//

import UIKit
import ARAlertViewController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK:- IBActions
    @IBAction func showDefaultErrorAlert(_ sender: UIButton) {
        
        self.showErrorAlertWithMessage(message: "add error message here \n add error message here\n add error message here", alertType: .defaultAlert) {
            print("User clicked on Default Error ok button")
        }
        
    }
    
    @IBAction func showCustomErrorAlert(_ sender: UIButton) {
        
        self.showErrorAlertWithMessage(message: "add error message here. \n Message can be multiline and view will adjust accourding to message "){
            print("User clicked on Custom Error ok button")
        }
        
    }
    
    @IBAction func showSuccessAlert(_ sender: UIButton) {
        
        self.showSuccessAlertWithMessage(message: "Add you Success message there") {
            print("User clicked on success ok button")
        }
        
    }
}

