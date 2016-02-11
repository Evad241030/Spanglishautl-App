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
    var correctAnswer: String?
    
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
    }
    @IBAction func buttonBhit(sender: UIButton) {
    }
    @IBAction func buttonChit(sender: UIButton) {
    }
    @IBAction func buttonDhit(sender: UIButton) {
    }
    @IBOutlet weak var responseLabel: UILabel!
    
    func assignAnswer() {
        buttonA.setTitle(imageName, forState: UIControlState.Normal)
    }
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        QuestionLabel.text = "What shape is this?"
        contentImageView!.image = UIImage(named: imageName)
        assignAnswer()
    }


}
