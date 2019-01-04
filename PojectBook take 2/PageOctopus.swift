//
//  PageOctopus.swift
//  PojectBook take 2
//
//  Created by Summer Crow on 16/02/2018.
//  Copyright © 2018 ghourab. All rights reserved.
//

import UIKit

//struct OctopusVariables {
    // static var Book1Page3: UIImage?
  //  static var selection: UIImage?
//}
class PageOctopus: UIViewController {
    
    @IBOutlet weak var closePointButton: UIButton!
    
    
    @IBOutlet weak var pointView: UIView!
    
    @IBOutlet weak var octopusLabel: UILabel!
    
    @IBOutlet weak var octopusImage: UIImageView!
    
    
    
    
    
    
    
    @IBOutlet weak var option1ButtonLabel: UIButton!
    
    @IBOutlet weak var option2ButtonLabel: UIButton!
    
    @IBOutlet weak var option3ButtonLabel: UIButton!
    
    
    @IBOutlet weak var optionsView: UIView!
    
    @IBOutlet weak var leadingContrainstOptionsView: NSLayoutConstraint!
    
    
    let octopusList = ["with maracas", "a piano", "the drums"]
    
    
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
        
       // OctopusVariables.selection = UIImage(named: octopusList[0])
        
        
        optionsView.layer.shadowOpacity = 2
        optionsView.layer.shadowRadius = 6
        leadingContrainstOptionsView.constant = -315
        
        octopusLabel.text = octopusList[0]
        
        
        octopusImage.image = UIImage(named: octopusList[0])
        
        
        
        
        
        
        
        
        let octopusTap = UITapGestureRecognizer(target: self, action: #selector(labelTapped(gestureRecognizer:)))
        octopusTap.name = "Octopus"
        octopusLabel.addGestureRecognizer(octopusTap)
        
        
        
        
        
        
        
        enableLabelInteractions()
        
        
        
    }
    
  //  override func viewWillAppear(_ animated: Bool) {
    //    pointView.removeFromSuperview()
    //}
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
        //pageVC.selectedImage = octopusImage.image
        
        
    }
    
    @IBAction func option2Pressed(_ sender: Any) {
        
        index = 1
        updateAllPropertiesAndLabels(optionButtonLabel: option2ButtonLabel, index: index)
        print("option 2 pressed")
        index = 0
    }
    
    @IBAction func option3Pressed(_ sender: Any) {
        print("option 3 pressed")
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
        if (gestureRecognizer.name == "Octopus")
        {
            // Handle octopus tap
            valueList = octopusList
        }
        
        updateOptionsLabels(propertyList: valueList)
        showOptionsView()
        disableLabelInteractions()
        
    }
    
    
    
    
    //////////ENABLE AND DISABLE LABELS INTERACTIONS/////////
    func enableLabelInteractions(){
        
        
        octopusLabel.isUserInteractionEnabled = true
    }
    func disableLabelInteractions(){
        
        octopusLabel.isUserInteractionEnabled = false
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
        leadingContrainstOptionsView.constant = -315
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
        
        if optionButtonLabel.titleLabel?.text == octopusList[index]{
            setImagesAndLabels(image: octopusImage, label: octopusLabel, propertyList: octopusList, index: index)
            
            //Making octopus global:
           // OctopusVariables.selection = UIImage(named: octopusList[index])
            
            hideOptionsVew()
            updateOptionsLabels(propertyList: octopusList)
        }
        
        
    }

}
