//
//  FirstViewController.swift
//  Booking
//
//  Created by Ivan Komarov on 17.04.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    static func instantiateInitialStoryboard(book:String)->HomeViewController{
        let storyboard = UIStoryboard(name: "HomeView", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController()
        
        viewController?.title = book
        
        return viewController as! HomeViewController
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        navigationController!.pushViewController(MenuHomeViewController.instantiateInitialViewController(), animated: true)
        
        
        
    }
    
    
}
