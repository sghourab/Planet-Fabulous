//
//  GoldenCrowDevelopment.swift
//  PojectBook take 2
//
//  Created by Summer Crow on 23/04/2018.
//  Copyright © 2018 ghourab. All rights reserved.
//

import UIKit

class GoldenCrowDevelopment: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
        // Do any additional setup after loading the view.
        
    }
    @objc func timeToMoveOn() {
        self.performSegue(withIdentifier: "goToMainVC", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
