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

        UIView.animateWithDuration(1.0, animations: {

            self.animalLabel.transform = CGAffineTransformMakeScale(0.2, 0.2)
            self.animalLabel.alpha = 0.0
            self.resultLabel.hidden = true

            }, completion: { (Bool) -> Void in

                self.animalLabel.transform = CGAffineTransformIdentity
                self.animalLabel.alpha = 1.0
                self.resultLabel.hidden = false
                self.changeLabel()
        })
    }

    func changeLabel() {
        let random = arc4random_uniform(100)

        switch random {
        case 0..<10:
            animalLabel.text = "🐶"
            resultLabel.text = "大吉だワン！"
        case 10..<30:
            animalLabel.text = "🐱"
            resultLabel.text = "中吉だニャー！"
        case 30..<50:
            animalLabel.text = "🐴"
            resultLabel.text = "吉だヒヒーン！"
        case 50..<70:
            animalLabel.text = "🐮"
            resultLabel.text = "末吉だモー！"
        case 70..<90:
            animalLabel.text = "🐘"
            resultLabel.text = "凶だゾウ！"
        default:
            animalLabel.text = "🐯"
            resultLabel.text = "大凶だガオー！"
        }
    }
}

