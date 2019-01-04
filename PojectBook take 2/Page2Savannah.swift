//
//  Page2Savannah.swift
//  PojectBook take 2
//
//  Created by Summer Crow on 26/03/2018.
//  Copyright © 2018 ghourab. All rights reserved.
//

import UIKit

class Page2Savannah: UIViewController {

    @IBOutlet weak var homeButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homebutton()
        
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func homebutton(){
        homeButton.layer.cornerRadius = 0.5 * homeButton.bounds.size.width
        homeButton.clipsToBounds = true
        homeButton.setImage(UIImage(named:"HomeButtonSquare.png"), for: .normal)
        
    }
}
