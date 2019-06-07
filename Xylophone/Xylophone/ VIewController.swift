//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
var player: AVAudioPlayer?

class ViewController: UIViewController{
    


    override func viewDidLoad() {
        super.viewDidLoad()
        for index in 0...6{
            playTone(tagVal: String(index+1))
            
        }
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        var tagVar:Int = sender.tag
        var passVal:String = String(tagVar)
        playTone(tagVal: passVal)
        
    }
    
    func playTone(tagVal:String){
        guard let url = Bundle.main.url(forResource: "note"+tagVal, withExtension: "wav") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }

}

