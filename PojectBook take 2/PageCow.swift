//
//  Book1Page3.swift
//  PojectBook take 2
//
//  Created by Summer Crow on 24/10/2017.
//  Copyright © 2017 ghourab. All rights reserved.
//

import UIKit

struct CowVariables {
    // static var Book1Page3: UIImage?
    static var selection: UIImage?
}
    
class PageCow: UIViewController {
    
    @IBOutlet weak var closePointButton: UIButton!
    
    @IBOutlet weak var pointView: UIView!
    
    @IBOutlet weak var cowLabel: UILabel!
    
    @IBOutlet weak var cowImage: UIImageView!
    
    
    
    
    
    
    
    @IBOutlet weak var option1ButtonLabel: UIButton!
    
    @IBOutlet weak var option2ButtonLabel: UIButton!
    
    @IBOutlet weak var option3ButtonLabel: UIButton!
    
    
    @IBOutlet weak var optionsView: UIView!
    
    @IBOutlet weak var leadingContrainstOptionsView: NSLayoutConstraint!
    
    
    let cowList = ["covered in stars", "with fur that looks like a puzzle", "with a moustache, black hat and red glasses"]
    
    
    //let passedToViewController = Book1Page6()
    @IBOutlet weak var homeButton: UIButton!
    
    
       
    @IBAction func closePointButtonAction(_ sender: Any) {
        pointView.removeFromSuperview()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        optionButton3D(button1: option1ButtonLabel, button2: option2ButtonLabel, button3: option3ButtonLabel)
      
        
        
        
        //homeButton.frame = CGRect(x: 160, y: 100, width: 50, height: 50)
        homeButton.layer.cornerRadius = 0.5 * homeButton.bounds.size.width
        homeButton.clipsToBounds = true
        homeButton.setImage(UIImage(named:"HomeButtonSquare.png"), for: .normal)
        
        CowVariables.selection = UIImage(named: cowList[0])
        
        
        optionsView.layer.shadowOpacity = 2
        optionsView.layer.shadowRadius = 6
        leadingContrainstOptionsView.constant = -360
        
        cowLabel.text = cowList[0]
        
        
        cowImage.image = UIImage(named: cowList[0])
        
        
        
        
        
        
        
        
        let cowTap = UITapGestureRecognizer(target: self, action: #selector(labelTapped(gestureRecognizer:)))
        cowTap.name = "Cow"
        cowLabel.addGestureRecognizer(cowTap)
        
        
        
        
        
        
        
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
        //pageVC.selectedImage = cowImage.image
        
        
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
        if (gestureRecognizer.name == "Cow")
        {
            // Handle Cow tap
            valueList = cowList
        }
        
        updateOptionsLabels(propertyList: valueList)
        showOptionsView()
        disableLabelInteractions()
        
    }
    
    
    
    
    //////////ENABLE AND DISABLE LABELS INTERACTIONS/////////
    func enableLabelInteractions(){
        
        
        cowLabel.isUserInteractionEnabled = true
    }
    func disableLabelInteractions(){
        
        cowLabel.isUserInteractionEnabled = false
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
        leadingContrainstOptionsView.constant = -360
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
        
        if optionButtonLabel.titleLabel?.text == cowList[index]{
            setImagesAndLabels(image: cowImage, label: cowLabel, propertyList: cowList, index: index)
            
            //Making cow global:
            CowVariables.selection = UIImage(named: cowList[index])
            
            hideOptionsVew()
            updateOptionsLabels(propertyList: cowList)
        }
        
        
    }
}

