//
//  ViewController.swift
//  MyFirstApp
//
//  Created by jollyjoester_pro on 2/5/16.
//  Copyright © 2016 jollyjoester. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tappedButton(sender: UIButton) {

        label.text = "やった🎉"

    }

}

