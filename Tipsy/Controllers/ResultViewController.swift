//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Jyothi Anandavally on 12/26/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var splitAmount: String?
    var splitInfo: String?
    
    @IBOutlet weak var splitAmountLabel: UILabel!
    @IBOutlet weak var splitInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        splitAmountLabel.text = splitAmount
        splitInfoLabel.text = splitInfo
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
