//
//  ThirdViewController.swift
//  Booking
//
//  Created by Ivan Komarov on 17.04.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    static func instantiateInitialStoryboard()->ProfileViewController{
        let storybaord = UIStoryboard(name: "ProfileView", bundle: nil)
        let viewController = storybaord.instantiateInitialViewController()
        
        return viewController as! ProfileViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue

    }
    

    

}
