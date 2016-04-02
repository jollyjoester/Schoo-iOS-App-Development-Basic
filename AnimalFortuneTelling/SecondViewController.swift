//
//  SecondViewController.swift
//  AnimalFortuneTelling
//
//  Created by jollyjoester_pro on 4/1/16.
//  Copyright © 2016 jollyjoester. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("SecondViewController.viewDidLoad()")
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("SecondViewController.viewWillAppear()")

        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("SecondViewController.viewDidAppear()")
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("SecondViewController.viewWillDisAppear()")

        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("SecondViewController.viewDidDisappear()")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
