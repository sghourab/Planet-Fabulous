//
//  Book1Page5.swift
//  PojectBook take 2
//
//  Created by Summer Crow on 30/10/2017.
//  Copyright © 2017 ghourab. All rights reserved.
//

import UIKit

struct ChickenVariables {
    
    static var selection: UIImage?
}

class PageChicken: UIViewController {

    @IBOutlet weak var chickenLabel: UILabel!
    
    @IBOutlet weak var chickenImage: UIImageView!
    
    @IBOutlet weak var option1ButtonLabel: UIButton!
    
    @IBOutlet weak var option2ButtonLabel: UIButton!
    
    @IBOutlet weak var option3ButtonLabel: UIButton!
    
    
    @IBOutlet weak var optionsView: UIView!
    
    @IBOutlet weak var leadingContrainstOptionsView: NSLayoutConstraint!
    
    
    let chickenList = ["drinking a cup of tea", "balancing eggs on its head","wearing a pink necklace and tutu"]
    
    
    //let passedToViewController = Book1Page6()
    
    
    @IBOutlet weak var homeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         optionButton3D(button1: option1ButtonLabel, button2: option2ButtonLabel, button3: option3ButtonLabel)
        
        homeButton.layer.cornerRadius = 0.5 * homeButton.bounds.size.width
        homeButton.clipsToBounds = true
        homeButton.setImage(UIImage(named:"HomeButtonSquare.png"), for: .normal)
        
        ChickenVariables.selection = UIImage(named: chickenList[0])
        
        
        optionsView.layer.shadowOpacity = 2
        optionsView.layer.shadowRadius = 6
        leadingContrainstOptionsView.constant = -300
        
        chickenLabel.text = chickenList[0]
        
        
        chickenImage.image = UIImage(named: chickenList[0])
        
        
        
        
        
        
        
        
        let chickenTap = UITapGestureRecognizer(target: self, action: #selector(labelTapped(gestureRecognizer:)))
        chickenTap.name = "Chicken"
        chickenLabel.addGestureRecognizer(chickenTap)
        
        
        
        
        
        
        
        enableLabelInteractions()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    var index = 0
    @IBAction func option1Pressed(_ sender: Any) {
        
        updateAllPropertiesAndLabels(optionButtonLabel: option1ButtonLabel, index: index)
        print("option 1 pressed")
        index = 0
        
        /////////child to parent//////////////////////
        //let pageVC = self.parent as! SavannahPageController
        //pageVC.selectedImage = chickenImage.image
        
        
    }
    
    @IBAction func option2Pressed(_ sender: Any) {
        
        index = 1
        updateAllPropertiesAndLabels(optionButtonLabel: option2ButtonLabel, index: index)
        print("option 2 pressed")
        index = 0
    }
    
    @IBAction func option3Pressed(_ sender: Any) {
       
        index = 2
        updateAllPropertiesAndLabels(optionButtonLabel: option3ButtonLabel, index: index)
        print("option 3 pressed")
        index = 0
    }
    
    
    // Set the option label titles in the option view
    @objc func labelTapped(gestureRecognizer: UITapGestureRecognizer) {
        
        // Create a placeholder array to be set to the correct list based on tapped label
        var valueList = [String]()
        
        // Check which label on the page was clicked
        if (gestureRecognizer.name == "Chicken")
        {
            // Handle chicken tap
            valueList = chickenList
        }
        
        updateOptionsLabels(propertyList: valueList)
        showOptionsView()
        disableLabelInteractions()
        
    }
    
    
    
    
    //////////ENABLE AND DISABLE LABELS INTERACTIONS/////////
    func enableLabelInteractions(){
        
        
        chickenLabel.isUserInteractionEnabled = true
    }
    func disableLabelInteractions(){
        
        chickenLabel.isUserInteractionEnabled = false
    }
    
    ////////////SET IMAGES AND LABELS ON MAIN VIEW /////////////////
    
    func setImagesAndLabels(image: UIImageView!, label: UILabel!, propertyList: [String], index: Int){
        image.image = UIImage(named: propertyList[index])
        label.text = propertyList[index]
        
        
        
    }
    
    ////////SHOW OPTIONS VIEW///////////////
    func showOptionsView(){
        leadingContrainstOptionsView.constant = 0
        UIView.animate(withDuration: 0.4, animations:{self.view.layoutIfNeeded()})
    }
    ////////HIDE OPTIONS VIEW///////////////
    func hideOptionsVew(){
        leadingContrainstOptionsView.constant = -250
        UIView.animate(withDuration: 0.4, animations:{self.view.layoutIfNeeded()})
    }
    /////////UPDATE LABEL OF OPTIONS BUTTONS IN OPTIONS VIEW///////////
    func updateOptionsLabels(propertyList: [String]) {
        option1ButtonLabel.setTitle(propertyList[0], for: .normal)
        option2ButtonLabel.setTitle(propertyList[1], for: .normal)
        option3ButtonLabel.setTitle(propertyList[2], for: .normal)
    }
    ////////////UPDATE ALL PROPERTIES, LABELS, BUTTON LABELS, VIEWS//////////////
    func updateAllPropertiesAndLabels(optionButtonLabel:UIButton!, index: Int){
        
        enableLabelInteractions()
        
        if optionButtonLabel.titleLabel?.text == chickenList[index]{
            setImagesAndLabels(image: chickenImage, label: chickenLabel, propertyList: chickenList, index: index)
            
            //Making chicken global:
            ChickenVariables.selection = UIImage(named: chickenList[index])
            
            hideOptionsVew()
            updateOptionsLabels(propertyList: chickenList)
        }
        
        
    }
}
