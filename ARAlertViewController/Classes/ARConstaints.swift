//
//  ARConstaints.swift
//  ARAlertViewController
//
//  Created by AbdulRehman Warraich on 10/18/18.
//

import Foundation

public struct ARConstaints {
    public static let alertTitle :String = "Alert"
    public static let errorTitle :String = "Error"
    public static let successfulTitle :String = "Successful"
    
    public static let okButtonTitle :String = "OK"
    
    public typealias ARButtonCompletionHandler = () -> ()
    
    public enum AlertType {
        case customAlert
        case defaultAlert
    }
    
}
