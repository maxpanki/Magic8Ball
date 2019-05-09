//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Maksim Pansevich on 5/9/19.
//  Copyright © 2019 Maksim Pansevich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballIndex: Int = 0
    let ballsArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var ballWithAnswer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateAnswer()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateAnswer()
        
    }

    
    @IBAction func giveAnswer(_ sender: UIButton) {
        
        updateAnswer()
        
    }
    
    func updateAnswer(){
        
        ballIndex = Int.random(in: 0 ... 4)
        ballWithAnswer.image = UIImage(named: ballsArray[ballIndex])
        
    }
    
}

