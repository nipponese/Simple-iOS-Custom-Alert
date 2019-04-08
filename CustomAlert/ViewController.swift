//
//  ViewController.swift
//  CustomAlert
//
//  Created by Noah Tsutsui on 3/18/19.
//  Copyright © 2019 TwoButts. All rights reserved.
//

import UIKit

@IBDesignable class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    let alertService = AlertService()
    
    @IBAction func didTapChangeButton(_ sender: UIButton) {
        let alertVC = alertService.alert(alertTitle: "Change Text?", message: "You want to change the text in the label, right?", actionTitle: "YEAH") { [weak self] in
            self?.textLabel.text = "👌"
        }
        present(alertVC, animated: true, completion: nil)
    }
    
}

