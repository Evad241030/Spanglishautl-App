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
    
    
    // Temp files to test audio - Also using this as vc-title and Button name.
    // I'm hard coding these values - Not the best solution!!!

    let audioArray = ["Spanglishuatl", "Bean", "Cacao", "Star", "Xocolatl", "Cord", "Mesquite2", "Kernel", "Mahiz", "Ribbed", "Tamalli", "Asterisk", "Nopalli", "Seed", "Chian", "Pear", "Ahuacatl", "Teardrop", "Tomatl", "Reuleaux Triangle", "Chilli", "Circles", "Ahuacamolli", "Blank"]
    
    // Creating a player
    var player : AVAudioPlayer!
    
    // creating an idx holder for the index value from previous screen's collection view
    var audioClipId = Int()
    
    
    @IBOutlet weak var imageView: UIImageView!

    var image = UIImage()
    
    
    //Created an outlet for the button to manipulate its properties.
    
    @IBAction func speakHit(sender: UIBarButtonItem) {
        player.play()
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // I'm assigning my image property (passed from previous screen) - to this view's imageView
        self.imageView.image = self.image
        
        // I'm getting a specific string from this view's audioArray at the index the user selected in the collectionVC
        //AudioTitle becomes central to this View's data.
        
        let audioTitle = (audioArray[audioClipId])
        
        // Passing the audioTitle to the player so It can play the correct sound.
        
        player = try? AVAudioPlayer(contentsOfURL: NSBundle.mainBundle().URLForResource(audioTitle, withExtension: "mp3")!)
        
        // I added this to prevent latency.
        player.prepareToPlay()
        
        // I'm changing the view's navigation tile to sync with correct cell - But I'm using this AudioArray's String
        // I'm making sure that the correct Mequite plays (spanish vs engligh). Also, Since I'm using the audio-Title as the nav title, I'm making sure the "2" doesn't display.
        if audioTitle == "Mesquite2" {
            self.title = "Mesquite"
        } else if audioTitle == "Blank" {
            self.title = "The End"
        } else {
        self.title = audioTitle
        }
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
