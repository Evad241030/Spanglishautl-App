//
//  ViewController.swift
//  Spanglishautl App
//
//  Created by DAVID GONZALEZ on 11/29/15.
//  Copyright © 2015 David Gonzalez. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation



class ViewController: UIViewController, UIPageViewControllerDataSource {
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    
//    @IBAction func playButtonHit(sender: UIBarButtonItem) {
//        
//        let fileURL = NSBundle.mainBundle().URLForResource("zoecar", withExtension: "mov")
//        playerView = AVPlayer(URL: fileURL!)
//        
//        playerViewController.player = playerView
//        
//        self.presentViewController(playerViewController, animated: true) {
//            self.playerViewController.player?.play()
//        }
//        
//    }
    
    
    

    @IBAction func backToCoverhit(sender: UIBarButtonItem) {
        createPageViewController()
        setupPageControl()
    }
    

    
    // MARK: - Variables
    private var pageViewController: UIPageViewController?
    
    // Initialize it right away here
    private let contentImages = myPagesArray().pages
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        createPageViewController()
        setupPageControl()

    }
    /*
    override func viewDidAppear(animated: Bool) {
        let nav = self.navigationController?.navigationBar
//        nav?.barStyle = UIBarStyle.Black
//        nav?.tintColor = UIColor.greenColor()
//        nav?.barTintColor = UIColor.yellowColor()
    
        /*
        let imageView = UIImageView(frame: CGRectMake(0, 0, 40, 40))
        imageView.contentMode = .ScaleAspectFit
        let name = xPics.pics[0]
        let image = UIImage(named: name)
        imageView.image = image
        navigationItem.titleView = imageView
        */

        
    }
*/
    
    
    
    // This is taking the PageController and sticking it into the IntialVC
    private func createPageViewController() {
        
        let pageController = self.storyboard!.instantiateViewControllerWithIdentifier("PageController") as! UIPageViewController
        pageController.dataSource = self
        
        if contentImages.count > 0 {
            let firstController = getItemController(0)!
            let startingViewControllers: NSArray = [firstController]
            pageController.setViewControllers(startingViewControllers as? [UIViewController], direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        }
        
        pageViewController = pageController
        addChildViewController(pageViewController!)
        self.view.addSubview(pageViewController!.view)
        pageViewController!.didMoveToParentViewController(self)
    }
    
    private func setupPageControl() {
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.grayColor()
        appearance.currentPageIndicatorTintColor = UIColor.whiteColor()
        appearance.backgroundColor = UIColor.darkGrayColor()
    }
    
    // MARK: - UIPageViewControllerDataSource
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! PageItemController
        
        if itemController.itemIndex > 0 {
            return getItemController(itemController.itemIndex-1)
        }
        
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! PageItemController
        
        if itemController.itemIndex+1 < contentImages.count {
            return getItemController(itemController.itemIndex+1)
        }
        
        return nil
    }
    
    
    
    
    //I'm assigning the ordered file name to the current view.
    private func getItemController(itemIndex: Int) -> PageItemController? {
        
        if itemIndex < contentImages.count {
            let pageItemController = self.storyboard!.instantiateViewControllerWithIdentifier("ItemController") as! PageItemController
            pageItemController.itemIndex = itemIndex
            pageItemController.imageName = contentImages[itemIndex]
            return pageItemController
        }
        
        return nil
    }
    
    // MARK: - Page Indicator

    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return contentImages.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }


}

