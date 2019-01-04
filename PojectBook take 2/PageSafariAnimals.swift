//
//  PageSafariAnimals.swift
//  PojectBook take 2
//
//  Created by Summer Crow on 15/12/2017.
//  Copyright © 2017 ghourab. All rights reserved.
//

import UIKit

class PageSafariAnimals: UIViewController {

    @IBOutlet weak var homeButton: UIButton!
    
    @IBOutlet weak var elephant: UIImageView!
    
    @IBOutlet weak var lion: UIImageView!
    
    @IBOutlet weak var giraffe: UIImageView!
    
    @IBOutlet weak var rhino: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImages()
        homebutton()
        
     
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setImages()
    }
    
    func homebutton(){
        homeButton.layer.cornerRadius = 0.5 * homeButton.bounds.size.width
        homeButton.clipsToBounds = true
        homeButton.setImage(UIImage(named:"HomeButtonSquare.png"), for: .normal)
        
    }
    
    func setImages(){
        lion.image = LionVariables.selection
        rhino.image = RhinoVariables.selection
        elephant.image = ElephantVariables.selection
        giraffe.image = GirrafeVariables.selection
        
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
