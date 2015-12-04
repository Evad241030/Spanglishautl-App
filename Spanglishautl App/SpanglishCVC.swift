//
//  SpanglishCVC.swift
//  Spanglishautl App
//
//  Created by DAVID GONZALEZ on 11/29/15.
//  Copyright © 2015 David Gonzalez. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class SpanglishCVC: UICollectionViewController {


    
    
var imageArray = ["Spanglishuatl-Cover.png", "Ahuacamolli.png", "Ahuacamolli2.png", "Ahuacatl.png", "Ahuacatl2.png", "Cacao.png", "Cacao2.png", "Chia.png", "Chia2.png", "Chilli.png", "Chilli2.png", "Mahiz.png", "Mahiz2.png", "Nopalli.png", "Nopalli2.png", "Tomatl.png", "Tomatl2.png", "Xocolatl.png", "Xocolatl2.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

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
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

//    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageArray.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)

        let slide = cell.viewWithTag(1) as! UIImageView
        slide.image = UIImage(named: imageArray[indexPath.row])
        
        // Configure the cell
    
        return cell
    }

    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("showImage", sender: self)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showImage"
        {
            let indexPaths = self.collectionView!.indexPathsForSelectedItems()!
            let indexPath = indexPaths[0] as NSIndexPath
            let vc = segue.destinationViewController as! GalleryItemVC
            
            vc.image = UIImage(named: (imageArray[indexPath.row]))!
            vc.title = self.imageArray[indexPath.row]
            
        }
    }
    /*
        
    let cell = collectionView.cellForItemAtIndexPath(indexPath) as UICollectionViewCell!
    (cell.viewWithTag(1) as? UIImageView)?.image
    
        if let img = (cell.viewWithTag(1) as? UIImageView)?.image {
            let iv = UIImageView(image: img)
            iv.tag = indexPath.row
            iv.userInteractionEnabled = true
            iv.contentMode = UIViewContentMode.ScaleAspectFit
            let rect = collectionView.convertRect(cell.frame, toView: view.window!)
            iv.frame = rect
            iv.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.8)
            
            view.window!.addSubview(iv)
            
            UIView.animateWithDuration(0.5) {
                iv.frame = self.view.window!.bounds
            }
            
            let tap = UITapGestureRecognizer(target: self, action: "HideImage:")
            iv.addGestureRecognizer(tap)
        }
*/

    
    /*
    func HideImage(recognizer:UITapGestureRecognizer) {
        if let view = recognizer.view {
            
            let cell = collectionView!.cellForItemAtIndexPath(NSIndexPath(forRow: view.tag, inSection: 0))!
            let rect = collectionView!.convertRect(cell.frame, toView: view.window!)
            
            UIView.animateWithDuration(0.5, animations: {
                view.frame = rect
                }, completion: { finished in
                    view.removeFromSuperview()
            })
        }
*/

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
