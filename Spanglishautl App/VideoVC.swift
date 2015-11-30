//
//  VideoVC.swift
//  Spanglishautl App
//
//  Created by DAVID GONZALEZ on 11/29/15.
//  Copyright © 2015 David Gonzalez. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoVC: UIViewController {

    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    
    @IBAction func playVideoHit(sender: UIButton) {
    let fileURL = NSURL(fileURLWithPath: "/Volumes/G-RAID/Gabriel /Spanglishautl App/Spanglishautl App/Spanglishautl App/zoe car.mov")
        playerView = AVPlayer(URL: fileURL)
        
        playerViewController.player = playerView
        
        self.presentViewController(playerViewController, animated: true) {
            self.playerViewController.player?.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
