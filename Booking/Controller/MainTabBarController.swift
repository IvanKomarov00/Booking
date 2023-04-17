//
//  MainTabBarController.swift
//  Booking
//
//  Created by Ivan Komarov on 17.04.2023.
//

import UIKit

class MainTabBarController: UITabBarController{
    override func viewDidLoad(){
        super.viewDidLoad()
        
        UpdateUI()
    }
    
    //Update UI
    func UpdateUI(){
        generateTabBar()
        setTabBarAppearence()
    }
    
    
    //Create TabBar
    private func generateTabBar(){
        viewControllers = [
        generateVC(viewController: FirstViewController(), title: "Home", image: UIImage(systemName: "house")),
        generateVC(viewController: SecondViewController(), title: "Order", image: UIImage(systemName: "cart")),
        generateVC(viewController: ThirdViewController(), title: "Profile", image: UIImage(systemName: "person.crop.circle"))
        ]
    }
    
    //Build VC TabBar items
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?)->UIViewController{
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        
        return viewController
    }
    
    private func setTabBarAppearence(){
        //Parameters
        let x:CGFloat = 10
        let y:CGFloat = 10
        let width = tabBar.bounds.width - x * 2
        let height = tabBar.bounds.height + y * 2
        
        //Create Rect
        let roundLayer = CAShapeLayer()
        
        let rect = CGRect(x: x, y: tabBar.bounds.minY - y, width: width, height: height)
        let bezierPath = UIBezierPath(roundedRect: rect, cornerRadius: height / 2)
        
        roundLayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        
        //Colors
        roundLayer.fillColor = UIColor.tabBarbackground.cgColor
        tabBar.tintColor = .tabBarItemSelected
        tabBar.unselectedItemTintColor = .tabBarItemLight
    }
}
