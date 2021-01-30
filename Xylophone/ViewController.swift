//
//  ViewController.swift
//  Xylophone
//
//  Created by Tim Irrgang on 26.01.21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func kePressed(_ sender: UIButton) {
        playSound(filename: sender.currentTitle!)
        UIView.animate(withDuration: 0.3) {
               sender.alpha = 0.5
           }

           DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 ) {
               UIView.animate(withDuration: 0.3) {
                   sender.alpha = 1.0
               }
           }
        
    }
    
    var player: AVAudioPlayer!

    func playSound(filename:String) {
          let url = Bundle.main.url(forResource: filename, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
          player.play()
                  
      }

  

     
    
}

