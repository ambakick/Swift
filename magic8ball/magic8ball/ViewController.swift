//
//  ViewController.swift
//  magic8ball
//
//  Created by RK Nair on 06/06/19.
//  Copyright © 2019 ambakick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        changeImage()
        // Do any additional setup after loading the view.
    }

    @IBAction func askButton(_ sender: Any) {
//        to have a rubber band effect after clicking the 'ask' button
        for index in 0...2{
        
            DispatchQueue.main.asyncAfter(deadline: .now()+0.3){
            self.changeImage()
            }
        }
        changeImage()
//        did not seem to work as I expected.... Have to add some animations
    }
    
    func changeImage(){
        var randVar: Int = 0;
        randVar = Int.random(in: 0 ... 4)
        ballImageView.image = UIImage(named: ballArray[randVar])
    }

}

