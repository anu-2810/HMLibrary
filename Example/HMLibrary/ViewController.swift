//
//  ViewController.swift
//  HMLibrary
//
//  Created by anu-2810 on 01/16/2018.
//  Copyright (c) 2018 anu-2810. All rights reserved.
//

import UIKit
import HMLibrary

class ViewController: UIViewController {

    var isBlinking = false
    let questLabel = UILabel(frame: CGRectMake(10, 20, 200, 30))
    let answerLabel = UILabel(frame: CGRectMake(10, 60, 200, 30))
    let blinkingLabel = BlinkingLabel(frame: CGRectMake(10, 120, 200, 30))
    let txtFld = HMMobilNumberTextField(frame: CGRectMake(10, 180, 200, 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questLabel.font = UIFont.systemFontOfSize(20)
        answerLabel.font = UIFont.systemFontOfSize(20)
        
        view.addSubview(questLabel)
        view.addSubview(answerLabel)
       
      
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFontOfSize(20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRectMake(10, 100, 125, 30))
        toggleButton.setTitle("Tell the length", forState: .Normal)
        toggleButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        toggleButton.addTarget(self, action: #selector(ViewController.toggleBlinking), forControlEvents: .TouchUpInside)
        view.addSubview(toggleButton)

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func toggleBlinking() {
        if (isBlinking) {
//           answerLabel.text = "\(questLabel.text!.toInt())"
            blinkingLabel.stopBlinking()
        } else {
            answerLabel.text = ""
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
    

}

