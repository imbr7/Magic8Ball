//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Bruno De Oliveira on 3/30/18.
//  Copyright © 2018 Bruno De Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageBall: UIImageView!
    
    var randomBallNumber : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        changeBallImage()
    }

    @IBAction func btnAskTapped(_ sender: Any) {
        changeBallImage()
    }
    
    func changeBallImage() {
        
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageBall.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeBallImage()
    }
    
}

