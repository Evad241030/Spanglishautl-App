//
//  PageItemController.swift
//  Spanglishautl App
//
//  Created by DAVID GONZALEZ on 11/29/15.
//  Copyright © 2015 David Gonzalez. All rights reserved.
//

import UIKit

class PageItemController: UIViewController {

    var itemIndex: Int = 0


    
    var correctAnswer: Int?
    
    
    let normalNames = ["Spanglishuatl", "Bean", "Cacao", "Star", "Xocolatl", "Cord", "Mesquite2", "Kernel", "Mahiz", "Ribbed", "Tamalli", "Asterisk", "Nopalli", "Seed", "Chian", "Pear", "Ahuacatl", "Teardrop", "Tomatl", "Reuleaux Triangle", "Chilli", "Circles", "Ahuacamolli", "Blank"]
    
    let possibleAnswers = ["Triangle", "Bean", "Cacao", "Star", "Xocolatl", "Cord", "Mesquite", "Kernel", "Mahiz", "Ribbed", "Tamalli", "Asterisk", "Nopalli", "Seed", "Chian", "Pear", "Ahuacatl", "Teardrop", "Tomatl", "Reuleaux Triangle", "Chilli", "Circles", "Ahuacamolli", "Rectangle"]
    
    
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    
    
    var imageName: String = "" {
        
        didSet {
            
            if let imageView = contentImageView {
                imageView.image = UIImage(named: imageName)
            }
            
        }
    }
    
    
    
    @IBOutlet var contentImageView: UIImageView?
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBAction func buttonAhit(sender: UIButton) {
        if(correctAnswer) == 1 {
            responseLabel.text = "Correct."
        } else {
            responseLabel.text = "Wrong. Try again."
        }
    }
    @IBAction func buttonBhit(sender: UIButton) {
        if(correctAnswer) == 2 {
            responseLabel.text = "Correct."
        } else {
            responseLabel.text = "Wrong. Try again."
        }
    }
    @IBAction func buttonChit(sender: UIButton) {
        if(correctAnswer) == 3 {
            responseLabel.text = "Correct."
        } else {
            responseLabel.text = "Wrong. Try again."
        }
    }
    @IBAction func buttonDhit(sender: UIButton) {
        if(correctAnswer) == 4 {
            responseLabel.text = "Correct."
        } else {
            responseLabel.text = "Wrong. Try again."
        }
    }
    @IBOutlet weak var responseLabel: UILabel!
    
    func assignAnswers() {
        
        var RandomNumber = arc4random() % 4
        RandomNumber += 1 // Don't like starting with zero
        
        switch(RandomNumber) {
            
        case 1:
            buttonA.setTitle("A. \(imageName)", forState: UIControlState.Normal)
//            buttonB.setTitle("Helium", forState: UIControlState.Normal)
//            buttonC.setTitle("Lithium", forState: UIControlState.Normal)
//            buttonD.setTitle("Beryllium", forState: UIControlState.Normal)
            correctAnswer = 1
            break
            
        case 2:
//            buttonA.setTitle("Helium", forState: UIControlState.Normal)
            buttonB.setTitle("B. \(imageName)", forState: UIControlState.Normal)
//            buttonC.setTitle("Lithium", forState: UIControlState.Normal)
//            buttonD.setTitle("Beryllium", forState: UIControlState.Normal)
            correctAnswer = 2
            break
            
        case 3:
//            buttonA.setTitle("Lithium", forState: UIControlState.Normal)
//            buttonB.setTitle("Helium", forState: UIControlState.Normal)
            buttonC.setTitle("C. \(imageName)", forState: UIControlState.Normal)
//            buttonD.setTitle("Beryllium", forState: UIControlState.Normal)
            correctAnswer = 3
            break
            
        case 4:
//            buttonA.setTitle("Beryllium", forState: UIControlState.Normal)
//            buttonB.setTitle("Helium", forState: UIControlState.Normal)
//            buttonC.setTitle("Lithium", forState: UIControlState.Normal)
            buttonD.setTitle("D. \(imageName)", forState: UIControlState.Normal)
            correctAnswer = 4
            break
            
        default:
            break
        }
        
}


    
    func assignFakeAnswers() {
        // can i set some variables to always collect index -

        if correctAnswer == 1 {
//          buttonA.setTitle(fakery[int], forState: UIControlState.Normal)
            buttonB.setTitle("B. \(possibleAnswers[Int(arc4random() % 20)])", forState: UIControlState.Normal)
            buttonC.setTitle("C. \(possibleAnswers[Int(arc4random() % 20)])", forState: UIControlState.Normal)
            buttonD.setTitle("D. \(possibleAnswers[Int(arc4random() % 20)])", forState: UIControlState.Normal)
        } else if correctAnswer == 2 {
            buttonA.setTitle("A. \(possibleAnswers[Int(arc4random() % 20)])", forState: UIControlState.Normal)
            buttonC.setTitle("C. \(possibleAnswers[Int(arc4random() % 20)])", forState: UIControlState.Normal)
            buttonD.setTitle("D. \(possibleAnswers[Int(arc4random() % 20)])", forState: UIControlState.Normal)
        } else if correctAnswer == 3 {
            buttonA.setTitle("A. \(possibleAnswers[Int(arc4random() % 20)])", forState: UIControlState.Normal)
            buttonB.setTitle("B. \(possibleAnswers[Int(arc4random() % 20)])", forState: UIControlState.Normal)
            buttonD.setTitle("D. \(possibleAnswers[Int(arc4random() % 20)])", forState: UIControlState.Normal)
        } else {
            buttonA.setTitle("A. \(possibleAnswers[Int(arc4random() % 20)])", forState: UIControlState.Normal)
            buttonB.setTitle("B. \(possibleAnswers[Int(arc4random() % 20)])", forState: UIControlState.Normal)
            buttonC.setTitle("C. \(possibleAnswers[Int(arc4random() % 20)])", forState: UIControlState.Normal)
        }
    }
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        QuestionLabel.text = "What shape is \(imageName)?"
        contentImageView!.image = UIImage(named: imageName)
//        itemIndex = 
        
        
        assignAnswers()
        assignFakeAnswers()
    }


}
