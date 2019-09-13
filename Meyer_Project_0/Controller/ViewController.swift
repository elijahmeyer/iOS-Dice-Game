//
//  ViewController.swift
//  Meyer_Project_0
//
//  Created by macuser on 9/13/19.
//  Copyright © 2019 WSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var playerDieRollLabel: UILabel?
    @IBOutlet var computerDieRollLabel: UILabel?
    @IBOutlet var dieSizeLabel: UILabel?
    @IBOutlet var winOrLossMessageLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let app = UIApplication.shared.delegate as! AppDelegate
        dieSizeLabel?.text = String(app.model.dieSize)
        
    }


    @IBAction func rollDice(sender: UIButton) {
        let app = UIApplication.shared.delegate as! AppDelegate
        app.model.rollDice()
        playerDieRollLabel?.text = String(app.model.playerNumber)
        computerDieRollLabel?.text = String(app.model.computerNumber)
        
    }
    
    @IBAction func changeDieSize(sender: UIStepper) {
        let app = UIApplication.shared.delegate as! AppDelegate
        app.model.setDieSize(num: Int(sender.value))
        dieSizeLabel?.text = String(app.model.dieSize)
    }
}

