//
//  AlertService.swift
//  CustomAlert
//
//  Created by Noah Tsutsui on 3/18/19.
//  Copyright © 2019 TwoButts. All rights reserved.
//

import UIKit

class AlertService {
    func alert(alertTitle: String, message: String, actionTitle: String, completion: @escaping ()->Void) -> AlertViewController {
        let storyboard = UIStoryboard(name: "Alert", bundle: Bundle.main)
       
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "Alert") as! AlertViewController
        
        viewController.alertTitle = alertTitle
       
        viewController.message = message
        
        viewController.actionButtonText = actionTitle
        
        viewController.completion = completion
        
        return viewController
    }
}
