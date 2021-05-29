//
//  ViewController.swift
//  DICE_ROLLER_SUM
//
//  Created by SHUBHAM KUMAR on 25/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var left: UIImageView!
    
    
    @IBOutlet weak var right: UIImageView!
    
    override func viewDidLoad() {
        
        label.text = "Welcome to DICE ROLLER!"
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {
        
        let fn = arc4random_uniform(6) + 1
        let sn = arc4random_uniform(6) + 1
        
        label.text = "THE SUM IS : \(fn + sn)"
        
        left.image = UIImage(named: "Dice\(fn)")
        
        right.image = UIImage(named: "Dice\(sn)")
    }
    
}

