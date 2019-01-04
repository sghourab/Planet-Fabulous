//
//  BeachPageViewController.swift
//  PojectBook take 2
//
//  Created by Summer Crow on 12/02/2018.
//  Copyright © 2018 ghourab. All rights reserved.
//

import UIKit

class BeachPageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource  {
    
    lazy var orderedViewControllers: [UIViewController] = {
        return [self.nextVc(viewController: "beachPage1"), self.nextVc(viewController: "beachPage2"), self.nextVc(viewController: "beachPage3"), self.nextVc(viewController: "beachPage4"),
            self.nextVc(viewController: "beachPage5"), self.nextVc(viewController: "beachPage6"),
                self.nextVc(viewController: "beachPage7")]
    }()
    
    var selectedImage: UIImage?
    
    
    //delete the line below----for page dot indicators:
    var pageControl = UIPageControl()
    override func viewDidLoad() {
        
        super.viewDidLoad()

       
        self.dataSource = self
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
            
        }
        
        
        self.delegate = self
        configurePageControl()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func nextVc(viewController: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:viewController)
        
        
        
    }
    
    //Mark: Dcata Source functions
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        //defining view controller index numbers...in our case it is 0 and 1. if there is no orderedviewcontroller will return nil
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        //the point on this func is to show the previous VC. so now we are defining the index of the previous VC by subtracting 1 from the current VC index
        let previousIndex = viewControllerIndex - 1
        
        // first page must be 0 and not less.
        guard previousIndex >= 0
            else {
                return nil
        }
        //the number of total vc (in our case 2) must always be greater than the idex numbers of the vc.
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        return orderedViewControllers[previousIndex]
        
        
        
        
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllerCount = orderedViewControllers.count
        // here we have a constant that has the number of VCs. In our case 2. the last possible index for the VCs is 1. we are saying below that the next index should not be 2...if it is then return a nil value
        guard orderedViewControllerCount != nextIndex else {
            return nil
            
        }
        guard orderedViewControllerCount > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
        
        
    }
    
    //////////delete////////////
    func configurePageControl() {
        // The total number of pages that are available is based on how many available colors we have.
        pageControl = UIPageControl(frame: CGRect(x: 0,y: UIScreen.main.bounds.maxY - 50,width: UIScreen.main.bounds.width,height: 50))
        self.pageControl.numberOfPages = orderedViewControllers.count
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.black
        self.pageControl.pageIndicatorTintColor = UIColor.white
        self.pageControl.currentPageIndicatorTintColor = UIColor.black
        self.view.addSubview(pageControl)
    }
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let pageContentViewController = pageViewController.viewControllers![0]
        self.pageControl.currentPage = orderedViewControllers.index(of: pageContentViewController)!
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
