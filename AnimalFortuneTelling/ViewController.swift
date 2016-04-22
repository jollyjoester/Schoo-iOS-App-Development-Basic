//
//  ViewController.swift
//  AnimalFortuneTelling
//
//  Created by jollyjoester_pro on 3/4/16.
//  Copyright © 2016 jollyjoester. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!

    var player: AVAudioPlayer!
    var bgmPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        print("ViewController.viewDidLoad()")

        self.navigationController?.setNavigationBarHidden(true, animated: false)

        let url = NSBundle.mainBundle().bundleURL.URLByAppendingPathComponent("bgm.mp3")

        do {
            bgmPlayer = try AVAudioPlayer(contentsOfURL: url)
            bgmPlayer.numberOfLoops = -1
            bgmPlayer.volume = 0.5
//            bgmPlayer.enableRate = true
//            bgmPlayer.rate = 0.5
//            bgmPlayer.currentTime = 5
//            bgmPlayer.pan = -1.0
            bgmPlayer.prepareToPlay()
            bgmPlayer.play()
        } catch {
            print("bgmエラーです")
        }
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController.viewWillAppear()")

        if !bgmPlayer.playing {
            bgmPlayer.play()
        }
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController.viewDidAppear()")
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController.viewWillDisAppear()")

        if bgmPlayer.playing {
            bgmPlayer.pause()
        }
    }

    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController.viewDidDisAppear()")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tellFortunes(sender: AnyObject) {

        if let swipe = sender as? UISwipeGestureRecognizer {
            switch swipe.direction {
            case UISwipeGestureRecognizerDirection.Right:
                swipeRight()
            case UISwipeGestureRecognizerDirection.Left:
                swipeLeft()
            case UISwipeGestureRecognizerDirection.Up:
                swipeUp()
            case UISwipeGestureRecognizerDirection.Down:
                swipeDown()
            default:
                break
            }
        } else {
            tappedButton()
        }
    }

    func tappedButton() {
        UIView.animateWithDuration(1.0, animations: {

            self.animalLabel.transform = CGAffineTransformMakeScale(0.2, 0.2)
            self.animalLabel.alpha = 0.0
            self.resultLabel.hidden = true

            }, completion: { (Bool) -> Void in

                self.animalLabel.transform = CGAffineTransformIdentity
                self.animalLabel.alpha = 1.0
                self.resultLabel.hidden = false
                self.changeLabel()

                UIView.animateWithDuration(0.1, animations: {
                    UIView.setAnimationRepeatCount(5)
                    self.animalLabel.transform = CGAffineTransformMakeTranslation(10, 0)
                    }, completion: { (Bool) -> Void in
                        self.animalLabel.transform = CGAffineTransformIdentity
                })
        })
    }

    func swipeRight() {
        UIView.animateWithDuration(1.0, animations: {

            self.animalLabel.transform = CGAffineTransformMakeTranslation(200, 0)
            self.animalLabel.alpha = 0.0
            self.resultLabel.hidden = true

            }, completion: { (Bool) -> Void in

                self.animalLabel.transform = CGAffineTransformIdentity
                self.animalLabel.alpha = 1.0
                self.resultLabel.hidden = false
                self.changeLabel()

                UIView.animateWithDuration(0.1, animations: {
                    UIView.setAnimationRepeatCount(5)
                    self.animalLabel.transform = CGAffineTransformMakeTranslation(10, 0)
                    }, completion: { (Bool) -> Void in
                        self.animalLabel.transform = CGAffineTransformIdentity
                })
        })
    }

    func swipeLeft() {
        UIView.animateWithDuration(1.0, animations: {

            self.animalLabel.transform = CGAffineTransformMakeTranslation(-200, 0)
            self.animalLabel.alpha = 0.0
            self.resultLabel.hidden = true

            }, completion: { (Bool) -> Void in

                self.animalLabel.transform = CGAffineTransformIdentity
                self.animalLabel.alpha = 1.0
                self.resultLabel.hidden = false
                self.changeLabel()

                UIView.animateWithDuration(0.1, animations: {
                    UIView.setAnimationRepeatCount(5)
                    self.animalLabel.transform = CGAffineTransformMakeTranslation(10, 0)
                    }, completion: { (Bool) -> Void in
                        self.animalLabel.transform = CGAffineTransformIdentity
                })
        })
    }

    func swipeUp() {
        UIView.animateWithDuration(1.0, animations: {

            self.animalLabel.transform = CGAffineTransformMakeTranslation(0, -200)
            self.animalLabel.alpha = 0.0
            self.resultLabel.hidden = true

            }, completion: { (Bool) -> Void in

                self.animalLabel.transform = CGAffineTransformIdentity
                self.animalLabel.alpha = 1.0
                self.resultLabel.hidden = false
                self.changeLabel()

                UIView.animateWithDuration(0.1, animations: {
                    UIView.setAnimationRepeatCount(5)
                    self.animalLabel.transform = CGAffineTransformMakeTranslation(10, 0)
                    }, completion: { (Bool) -> Void in
                        self.animalLabel.transform = CGAffineTransformIdentity
                })
        })
    }

    func swipeDown() {
        UIView.animateWithDuration(1.0, animations: {

            self.animalLabel.transform = CGAffineTransformMakeTranslation(0, 200)
            self.animalLabel.alpha = 0.0
            self.resultLabel.hidden = true

            }, completion: { (Bool) -> Void in

                self.animalLabel.transform = CGAffineTransformIdentity
                self.animalLabel.alpha = 1.0
                self.resultLabel.hidden = false
                self.changeLabel()

                UIView.animateWithDuration(0.1, animations: {
                    UIView.setAnimationRepeatCount(5)
                    self.animalLabel.transform = CGAffineTransformMakeTranslation(10, 0)
                    }, completion: { (Bool) -> Void in
                        self.animalLabel.transform = CGAffineTransformIdentity
                })
        })
    }

    func shake() {
        UIView.animateWithDuration(1.0, animations: {

            self.animalLabel.transform = CGAffineTransformMakeScale(3.0, 3.0)
            self.animalLabel.alpha = 0.0
            self.resultLabel.hidden = true

            }, completion: { (Bool) -> Void in

                self.animalLabel.transform = CGAffineTransformIdentity
                self.animalLabel.alpha = 1.0
                self.resultLabel.hidden = false
                self.changeLabel()

                UIView.animateWithDuration(0.1, animations: {
                    UIView.setAnimationRepeatCount(5)
                    self.animalLabel.transform = CGAffineTransformMakeTranslation(10, 0)
                    }, completion: { (Bool) -> Void in
                        self.animalLabel.transform = CGAffineTransformIdentity
                })
        })
    }

    func changeLabel() {
        let random = arc4random_uniform(100)
        var soundName = ""

        switch random {
        case 0..<10:
            animalLabel.text = "🐶"
            resultLabel.text = NSLocalizedString("Daikichi", comment: "")
            soundName = "dog.mp3"
        case 10..<30:
            animalLabel.text = "🐱"
            resultLabel.text = NSLocalizedString("Chukichi", comment: "")
            soundName = "cat.mp3"
        case 30..<50:
            animalLabel.text = "🐔"
            resultLabel.text = NSLocalizedString("Kichi", comment: "")
            soundName = "chicken.mp3"
        case 50..<70:
            animalLabel.text = "🐑"
            resultLabel.text = NSLocalizedString("Suekichi", comment: "")
            soundName = "sheep.mp3"
        case 70..<90:
            animalLabel.text = "🐘"
            resultLabel.text = NSLocalizedString("Kyo", comment: "")
            soundName = "elephant.mp3"
        default:
            animalLabel.text = "🐯"
            resultLabel.text = NSLocalizedString("Daikyo", comment: "")
            soundName = "tiger.mp3"
        }

        let url = NSBundle.mainBundle().bundleURL.URLByAppendingPathComponent(soundName)

        do {
            player = try AVAudioPlayer(contentsOfURL: url)
            player.play()
        } catch {
            print("エラーです")
        }
        
        //        if bgmPlayer.playing {
        //            bgmPlayer.pause()
        //        } else {
        //            bgmPlayer.play()
        //        }
        
        //        bgmPlayer.stop()
        
    }

    override func canBecomeFirstResponder() -> Bool {
        return true
    }

    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        print("motionBegan")

        if event?.type == UIEventType.Motion && event?.subtype == UIEventSubtype.MotionShake {
            shake()
        }
    }

    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        print("motionEnded")
    }

    override func motionCancelled(motion: UIEventSubtype, withEvent event: UIEvent?) {
        print("motionCanceled")
    }
}

