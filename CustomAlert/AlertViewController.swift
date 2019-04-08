//
//  AlertViewController.swift
//  CustomAlert
//
//  Created by Noah Tsutsui on 3/18/19.
//  Copyright © 2019 TwoButts. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var alertMessageTextLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    
    var alertTitle = String()
    var message = String()
    var actionButtonText = String()
    var completion: (()->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        titleTextLabel.text = alertTitle
        alertMessageTextLabel.text = message
        actionButton.setTitle(actionButtonText, for: .normal)
    }
    
    @IBAction func didTapCancelButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didTapActionButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        completion?()
    }
    
}
