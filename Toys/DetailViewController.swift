//
//  DetailViewController.swift
//  Toys
//
//  Created by Consultant on 11/6/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var secondLabel2: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var secondImage: UIImageView!
    
    var myImages: String? = ""
    var myString: String? = ""
    var myString2: String? = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabel2.text = myString2
        secondLabel.text = myString
        secondImage.image = UIImage(named: myImages!)
//        secondImage.image = UIImage(named: myImages[indexPath[1]])
        

            // Do any additional setup after loading the view.
        }
        
    }

