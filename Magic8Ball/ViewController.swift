//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Emmanuel Lopez Guerrero on 17/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    func updateBall(){
        var randomBallIndex:Int = 0
        randomBallIndex = Int.random(in: 1...5)
        imageView.image = UIImage(named: "ball\(randomBallIndex)")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            updateBall()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateBall()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBall()
    }
    
}

