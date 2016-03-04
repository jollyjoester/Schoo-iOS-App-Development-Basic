//
//  ViewController.swift
//  AnimalFortuneTelling
//
//  Created by jollyjoester_pro on 3/4/16.
//  Copyright © 2016 jollyjoester. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tellFortunes(sender: AnyObject) {

        let random = arc4random_uniform(6)

        switch random {
        case 0:
            animalLabel.text = "🐶"
            resultLabel.text = "大吉だワン！"
        case 1:
            animalLabel.text = "🐱"
            resultLabel.text = "中吉だニャー！"
        case 2:
            animalLabel.text = "🐴"
            resultLabel.text = "吉だヒヒーン！"
        case 3:
            animalLabel.text = "🐮"
            resultLabel.text = "末吉だモー！"
        case 4:
            animalLabel.text = "🐘"
            resultLabel.text = "凶だゾウ！"
        default:
            animalLabel.text = "🐯"
            resultLabel.text = "大凶だガオー！"
        }
    }
}

