//
//  ViewController.swift
//  Magic 8 Balll
//
//  Created by macOS on 12/15/18.
//  Copyright © 2018 ANDYNVT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var titleAsk: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

