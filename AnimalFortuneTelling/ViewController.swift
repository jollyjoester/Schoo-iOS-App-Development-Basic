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
            resultLabel.text = "大吉だワン！"
            soundName = "dog.mp3"
        case 10..<30:
            animalLabel.text = "🐱"
            resultLabel.text = "中吉だニャー！"
            soundName = "cat.mp3"
        case 30..<50:
            animalLabel.text = "🐔"
            resultLabel.text = "吉だコケコッコー！"
            soundName = "chicken.mp3"
        case 50..<70:
            animalLabel.text = "🐑"
            resultLabel.text = "末吉だメェェ！"
            soundName = "sheep.mp3"
        case 70..<90:
            animalLabel.text = "🐘"
            resultLabel.text = "凶だゾウ！"
            soundName = "elephant.mp3"
        default:
            animalLabel.text = "🐯"
            resultLabel.text = "大凶だガオー！"
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
}

