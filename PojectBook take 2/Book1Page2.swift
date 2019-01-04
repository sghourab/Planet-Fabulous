//
//  ViewController.swift
//  PojectBook take 2
//
//  Created by Summer Crow on 17/10/2017.
//  Copyright © 2017 ghourab. All rights reserved.
//

//public var dinoColorImageBook1Page2:UIImage = #imageLiteral(resourceName: "blue")


import UIKit

class FarmAnimals: UIViewController {
    //all outlets
    @IBOutlet weak var cow: UIImageView!
    
    @IBOutlet weak var sheep: UIImageView!
    
    @IBOutlet weak var chicken: UIImageView!
    
    @IBOutlet weak var horse: UIImageView!

    
    @IBOutlet weak var homeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImages()
        
        homeButton.layer.cornerRadius = 0.5 * homeButton.bounds.size.width
        homeButton.clipsToBounds = true
        homeButton.setImage(UIImage(named:"HomeButtonSquare.png"), for: .normal)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setImages()
    }
    
    func setImages(){
        cow.image = CowVariables.selection
        sheep.image = SheepVariables.selection
        chicken.image = ChickenVariables.selection
        horse.image = HorseVariables.selection
        
    }
}


