//
//  ViewController.swift
//  Dicee
//
//  Created by RK Nair on 05/06/19.
//  Copyright © 2019 ambakick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rollDice1: UIImageView!
    @IBOutlet weak var rollDice2: UIImageView!
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6",]
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    override func viewDidLoad() {
        updateDice()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButton(_ sender: Any) {
        updateDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }

    
    func updateDice(){
        randomDice1 = Int.random(in: 0 ... 5)
        randomDice2 = Int.random(in: 0 ... 5)
        
        rollDice1.image = UIImage(named: diceArray[randomDice1])
        rollDice2.image = UIImage(named: diceArray[randomDice2])
    }
    
}

