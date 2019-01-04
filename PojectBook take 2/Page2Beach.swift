//
//  Page2Beach.swift
//  PojectBook take 2
//
//  Created by Summer Crow on 26/03/2018.
//  Copyright © 2018 ghourab. All rights reserved.
//

import UIKit

class Page2Beach: UIViewController {

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
