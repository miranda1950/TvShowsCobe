//
//  RootCoordinator.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import UIKit
import SwiftUI

final class MainCoordinator: Coordinator {
    var navigationController = UINavigationController()
    var childCoordinators: [Coordinator] =  [HomeCoordinator(), TopRatedCoordinator()]
//    var tabBarController = UITabBarController ()
    
    func start() -> UIViewController {
        return createTabBar()
    }
    
    private func createTabBar() -> UITabBarController //UINavigationController
    {
        let viewControllers = childCoordinators.map{ coordinator -> UIViewController in
            let vc = coordinator.start()
            return vc
        }
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = viewControllers
        return tabBarController
        
        

//        navigationController.viewControllers = [tabBarController]
//        tabBarController.viewControllers = childCoordinators.map { coordinator in
//            coordinator.start()
//        }
//        return navigationController
    }
    
    
}

