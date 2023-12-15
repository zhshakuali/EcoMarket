//
//  MainTabBarVC.swift
//  EcoMarket
//
//  Created by Жансая Шакуали on 15.12.2023.
//

import UIKit

class MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        let vc1 = UINavigationController(rootViewController: MainVC())
        let vc2 = UINavigationController(rootViewController: BasketVC())
        let vc3 = UINavigationController(rootViewController: HistoryVC())
        let vc4 = UINavigationController(rootViewController: InfoVC())
        
        
        vc1.tabBarItem.image = UIImage(named: "home-03")
        vc2.tabBarItem.image = UIImage(named: "bag-03")
        vc3.tabBarItem.image = UIImage(named: "clock-01")
        vc4.tabBarItem.image = UIImage(named: "help-square-contained")
        
        vc1.title = "Главная"
        vc2.title = "Корзина"
        vc3.title = "История"
        vc4.title = "Инфо"
        
        tabBar.tintColor = .label
        
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
        selectedItems()
        
    }
    
    
   private func selectedItems() {
       let tabBar = self.tabBar

       let mainSelectImage: UIImage! = UIImage(named: "home-03selected")?.withRenderingMode(.alwaysOriginal)
       let bagSelectedImage: UIImage! = UIImage(named: "bag-03 selected")?.withRenderingMode(.alwaysOriginal)
       let historySelectedImage: UIImage! = UIImage(named: "clock-01selected")?.withRenderingMode(.alwaysOriginal)
       let infoSelectedImage: UIImage! = UIImage(named: "help-square-containedselected")?.withRenderingMode(.alwaysOriginal)

        (tabBar.items![0]).selectedImage = mainSelectImage
        (tabBar.items![1]).selectedImage = bagSelectedImage
        (tabBar.items![2]).selectedImage = historySelectedImage
        (tabBar.items![3]).selectedImage = infoSelectedImage

        tabBar.tintColor = UIColor.green
    }

}

