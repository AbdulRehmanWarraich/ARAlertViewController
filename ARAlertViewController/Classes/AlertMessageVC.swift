//
//  AlertMessageVC.swift
//  ARAlertViewController
//
//  Created by AbdulRehman Warraich on 10/18/18.
//  Copyright © 2018 AbdulRehman Warraich. All rights reserved.
//

import UIKit

open class AlertMessageVC: UIViewController {
    
    //MARK : - Properties
    fileprivate var cancelButtonCompletionBlock : ARConstaints.ARButtonCompletionHandler = {}
    var alertTitle : String = ""
    var cancelButtonTitle : String = ""
    var alertMessage :String = ""
    
    //MARK : - IBOutlets
    var detailView :UIView = UIView()
    var alertTitleLabel :UILabel = UILabel()
    var alertMessageLabel :UILabel = UILabel()
    var cancelButton :UIButton = UIButton()
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.darkGray.withAlphaComponent(0.5)
        
        /* Setting center detail containorView*/
        view.addSubview(detailView)
        detailView.backgroundColor = UIColor.white
        detailView.translatesAutoresizingMaskIntoConstraints = false
        
        detailView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        detailView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        detailView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        detailView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        detailView.heightAnchor.constraint(greaterThanOrEqualToConstant: 100).isActive = true
        
        /* Setting top title label and add in detail view */
        detailView.addSubview(alertTitleLabel)
        alertTitleLabel.textColor = UIColor.black
        alertTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        alertTitleLabel.numberOfLines = 1
        
        alertTitleLabel.topAnchor.constraint(equalTo: detailView.topAnchor, constant: 14).isActive = true
        alertTitleLabel.leadingAnchor.constraint(equalTo: detailView.leadingAnchor, constant: 20).isActive = true
        alertTitleLabel.trailingAnchor.constraint(equalTo: detailView.trailingAnchor, constant: -20).isActive = true
        alertTitleLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        /* Setting message label and add in detail view */
        detailView.addSubview(alertMessageLabel)
        alertMessageLabel.textColor = UIColor.darkText
        alertMessageLabel.translatesAutoresizingMaskIntoConstraints = false
        alertMessageLabel.numberOfLines = 0
        
        alertMessageLabel.topAnchor.constraint(equalTo: alertTitleLabel.bottomAnchor, constant: 8).isActive = true
        alertMessageLabel.leadingAnchor.constraint(equalTo: detailView.leadingAnchor, constant: 20).isActive = true
        alertMessageLabel.trailingAnchor.constraint(equalTo: detailView.trailingAnchor, constant: -20).isActive = true
        alertMessageLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 22).isActive = true
        
        
        /* Setting message label and add in detail view */
        detailView.addSubview(cancelButton)
        cancelButton.setTitleColor(UIColor.white, for: .normal)
        cancelButton.backgroundColor = UIColor.lightGray
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        
        cancelButton.centerXAnchor.constraint(equalTo: detailView.centerXAnchor).isActive = true
        cancelButton.topAnchor.constraint(equalTo: alertMessageLabel.bottomAnchor, constant: 16).isActive = true
        cancelButton.bottomAnchor.constraint(equalTo: detailView.bottomAnchor, constant: -16).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        cancelButton.widthAnchor.constraint(greaterThanOrEqualToConstant: 80).isActive = true
        
        cancelButton.addTarget(self, action: #selector(cancelButtonAction(_:)), for: .touchUpInside)
        
        
        alertTitleLabel.text = alertTitle
        alertMessageLabel.text = alertMessage
        cancelButton.setTitle(cancelButtonTitle, for: UIControl.State.normal)
        
        view.layoutIfNeeded()
    }
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        detailView.layer.cornerRadius = 6.0
        
    }
    
    
    //MARK:- Functions
    
    func setAlertWith(title:String = ARConstaints.alertTitle, message : String? = nil, btnTitle:String = ARConstaints.okButtonTitle, cancelBlock : @escaping ARConstaints.ARButtonCompletionHandler = {}) {
        
        alertTitle = title
        self.alertMessage = message ?? ""
        cancelButtonTitle = btnTitle
        
        
        cancelButtonCompletionBlock = cancelBlock
    }
    
    //MARK:- IBActions
    @IBAction func cancelButtonAction(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion:{
            self.cancelButtonCompletionBlock()
        })
        
    }
    
}
