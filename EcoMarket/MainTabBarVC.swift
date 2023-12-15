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
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

