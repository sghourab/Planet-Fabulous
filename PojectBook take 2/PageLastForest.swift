//
//  PageLastForest.swift
//  PojectBook take 2
//
//  Created by Summer Crow on 20/04/2018.
//  Copyright © 2018 ghourab. All rights reserved.
//

import UIKit

class PageLastForest: UIViewController {

    @IBOutlet weak var homeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //homeButton.frame = CGRect(x: 160, y: 100, width: 50, height: 50)
        homeButton.layer.cornerRadius = 0.5 * homeButton.bounds.size.width
        homeButton.clipsToBounds = true
        homeButton.setImage(UIImage(named:"HomeButtonSquare.png"), for: .normal)
        //homeButton.addTarget(self, action: #selector(thumbsUpButtonPressed), for: .touchUpInside)
        //view.addSubview(button)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
