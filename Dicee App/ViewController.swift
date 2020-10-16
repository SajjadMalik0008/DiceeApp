//
//  ViewController.swift
//  Dicee App
//
//  Created by Muhammad Sajjad on 13/10/2020.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var leftScore: Int = 0
    var rightScore: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
        // Do any additional setup after loading the view.
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }

    @IBAction func pressedRollButton(_ sender: Any) {
       updateDiceImage()
        
    }
    func updateDiceImage(){
        randomDiceIndex1 = Int.random(in: 1...6)
        randomDiceIndex2 = Int.random(in: 1...6)
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
        leftScore = leftScore + randomDiceIndex1
        rightScore = rightScore + randomDiceIndex2
        leftLabel.text = "\(leftScore)"
        rightLabel.text = "\(rightScore)"
    }
}

