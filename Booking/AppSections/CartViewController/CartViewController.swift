//
//  CartViewController.swift
//  Booking
//
//  Created by Ivan Komarov on 17.04.2023.
//

import UIKit

class CartViewController: UIViewController {

    static func instantiateInitialStoryboard()->CartViewController{
        let storyboard = UIStoryboard(name: "CartView", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController()
        
        return viewController as! CartViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
    

    
}
