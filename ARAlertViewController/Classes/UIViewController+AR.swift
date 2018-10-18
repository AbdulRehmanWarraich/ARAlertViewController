//
//  UIViewController+AR.swift
//  ARAlertViewController
//
//  Created by AbdulRehman Warraich on 10/18/18.
//  Copyright © 2018 AbdulRehman Warraich. All rights reserved.
//

import UIKit

public extension UIViewController {
    
    /**
     Show alert popup with message . All Parameters are optional.
     
     - parameter message: Message text that need to dispalyed.
     - parameter actionBlock: ok button action.
     
     
     - returns: void.
     */
    func showAlertWithMessage(message: String?, alertType :ARConstaints.AlertType = .customAlert, actionBlock :@escaping ARConstaints.ARButtonCompletionHandler = {}) {
        
        self.showAlert(title: ARConstaints.alertTitle, message: message, alertType: alertType, actionBlock: actionBlock)
    }
    
    /**
     Show error popup with message.
     
     - parameter message: Message text that need to dispalyed.
     - parameter actionBlock: ok button action.
     
     - returns: void.
     */
    func showErrorAlertWithMessage(message: String?, alertType :ARConstaints.AlertType = .customAlert, actionBlock :@escaping ARConstaints.ARButtonCompletionHandler = {}) {
        self.showAlert(title: ARConstaints.errorTitle, message: message, alertType: alertType, actionBlock: actionBlock)
    }
    
    /**
     Show success popup with message.
     
     - parameter message: Message text that need to dispalyed.
     - parameter actionBlock: ok button action.
     
     
     - returns: void.
     */
    func showSuccessAlertWithMessage(message: String?, alertType :ARConstaints.AlertType = .customAlert, actionBlock :@escaping ARConstaints.ARButtonCompletionHandler = {}) {
        
        self.showAlert(title: ARConstaints.successfulTitle, message: message, alertType: alertType, actionBlock: actionBlock)
    }
    
    /**
     Show popup with parameters.
     
     - parameter title: Popup titile.
     - parameter message: Message text that need to dispalyed.
     - parameter btnTitle: Ok button title. Bydefault its 'OK'.
     
     - returns: void.
     */
    func showAlert(title :String?, message :String?, btnTitle :String = ARConstaints.okButtonTitle, alertType :ARConstaints.AlertType = .customAlert, actionBlock :@escaping ARConstaints.ARButtonCompletionHandler = {}) {
        
        
        var titleValue = ARConstaints.alertTitle
        var messageValue = "Something went wrong, We apologize for any inconvenience. Please try again later."
        var buttonTitleValue = ARConstaints.okButtonTitle
        
        if let titleString = title,
            titleString.isEmpty == false {
            
            titleValue = titleString
        }
        
        if let messageString = message,
            messageString.isEmpty == false {
            
            messageValue = messageString
        }
        
        if btnTitle.isEmpty == false {
            
            buttonTitleValue = btnTitle
        }
        
        
        
        if alertType == .customAlert {
            
            let alert :AlertMessageVC = AlertMessageVC()
            alert.setAlertWith(title: titleValue, message: messageValue, btnTitle: buttonTitleValue , cancelBlock: actionBlock)
            self.presentPOPUP(alert, animated: true, modalTransitionStyle: .crossDissolve, completion: nil)
            
        } else {
            let alertViewController = UIAlertController(title: titleValue, message: messageValue, preferredStyle: .alert)
            
            
            let okAction = UIAlertAction(title: buttonTitleValue, style: .default) { (action) in
                actionBlock()
            }
            
            alertViewController.addAction(okAction)
            self.present(alertViewController, animated: true, completion: nil)
        }
    }
}


extension UIViewController {
    
    /**
     Presents ViewController with animation.
     
     - parameter viewControllerToPresent: ViewController to present.
     - parameter animated: With animation or not.
     - parameter modalTransitionStyle: Presentation style. Bydefault its 'coverVertical'.
     
     - returns: void.
     */
    open func presentPOPUP(_ viewControllerToPresent: UIViewController, animated flag: Bool, modalTransitionStyle:UIModalTransitionStyle = .coverVertical, completion: (() -> Swift.Void)? = nil) {
        
        DispatchQueue.main.async {
            viewControllerToPresent.modalPresentationStyle = .overCurrentContext
            viewControllerToPresent.modalTransitionStyle = modalTransitionStyle
            
            self.present(viewControllerToPresent, animated: flag, completion: completion)
        }
    }
}
