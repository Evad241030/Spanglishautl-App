//
//  GalleryItemVC.swift
//  Spanglishautl App
//
//  Created by DAVID GONZALEZ on 12/3/15.
//  Copyright © 2015 David Gonzalez. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation


class GalleryItemVC: UIViewController{
    
    var player : AVAudioPlayer!
    
    @IBOutlet weak var imageView: UIImageView!

    var image = UIImage()
    //Creating outlet for my button so I can change it
    @IBOutlet weak var button: UIButton!
    
    
    @IBAction func playAudio(sender: UIButton) {
        player.play()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setting my pic from collection view to this view's imageView
        self.imageView.image = self.image
        let audioTitle = "Chia"
        player = try? AVAudioPlayer(contentsOfURL: NSBundle.mainBundle().URLForResource(audioTitle, withExtension: "mp3")!)
        player.prepareToPlay()
        button.setTitle(audioTitle, forState: UIControlState.Normal)
        // Do any additional setup after loading the view.
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
