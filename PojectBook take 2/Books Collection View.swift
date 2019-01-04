//
//  Books Collection View.swift
//  PojectBook take 2
//
//  Created by Summer Crow on 17/10/2017.
//  Copyright © 2017 ghourab. All rights reserved.
//

import UIKit

class BooksCollectionView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    var category1 =  ["The Farm","The Safari", "The Beach", "The Forest"]
    var category2 = ["C2B1", "C2B2", "C3B1"]
    //let category3 = ["C3B1", "C3B2", "C3B3", "C3B4"]
    //let category4 = ["C4B1", "C4B2", "C4B3", "C4B4","C4B5"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       /* let cellSize = CGSize(width:80 , height:80)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical //.horizontal
        layout.itemSize = cellSize
        layout.sectionInset = UIEdgeInsets(top: 1, left: 5, bottom: 1, right: 5)
        layout.minimumLineSpacing = 1.0
        layout.minimumInteritemSpacing = 1.0
        //BooksCollectionView.setCollectionViewLayout(layout, animated: true)
        
        //BooksCollectionView.reloadData()
 */
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return category1.count
        }
        //if section == 1
        else {
            return category2.count
        }
       /* if section == 2 {
            return category3.count
        }
        else {
            return category4.count
        }
 */
    }
    
        
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? myCell
            
        if indexPath.section == 0 {
                cell?.myImageView.image = UIImage(named: category1[indexPath.row])
            
                
                return cell!
        }
    
                
       // if indexPath.section == 1
        else {
                    cell?.myImageView.image = UIImage(named: category2[indexPath.row])
            
                    
                    return cell!
                }
      
     /*
        if indexPath.section == 2 {
                    cell?.myImageView.image = UIImage(named: category3[indexPath.row])
            
                    
                    return cell!
                }
        else {
            cell?.myImageView.image = UIImage(named: category4[indexPath.row])
           
            
            return cell!
        }
        
        */
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                performSegue(withIdentifier: "C1B1", sender: self)
            }
            
        }
        if indexPath.section == 0 {
            if indexPath.row == 1 {
                performSegue(withIdentifier: "savannah", sender: self)
            }
        }
        
        if indexPath.section == 0 {
            if indexPath.row == 2 {
                performSegue(withIdentifier: "beach", sender: self)
            }
        }
        if indexPath.section == 0 {
            if indexPath.row == 3 {
                performSegue(withIdentifier: "forest", sender: self)
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let sectionHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "SectionHeaderView", for: indexPath) as! BooksCollectionViewHeaders
        if indexPath.section == 0 {
            sectionHeaderView.categoryTitleImage.image = UIImage(named: "PF square")
            sectionHeaderView.categoryTitleLabel.text = "Planet Fabulous Books"
        }
        //else if indexPath.section == 1
        else {
            sectionHeaderView.categoryTitleImage.image = UIImage(named: "header2")
            sectionHeaderView.categoryTitleLabel.text = "Planet Fabulous"
        }
        /*else if indexPath.section == 2 {
            sectionHeaderView.categoryTitleImage.image = UIImage(named: "header3")
            sectionHeaderView.categoryTitleLabel.text = "Level 2"
        }
        else {
            sectionHeaderView.categoryTitleImage.image = UIImage(named: "header4")
            sectionHeaderView.categoryTitleLabel.text = "Level 3"
        }*/
        
        return sectionHeaderView
        
    }
    
    
    
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
