//
//  HomeCoordinator.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import Foundation
import SwiftUI
import UIKit

final class HomeCoordinator: Coordinator {
    
    private let navigationController = UINavigationController()
    
    
    func start() -> UIViewController {
        return showHome()
    }
    
    private func showHome() -> UIViewController {
        let vm = HomeScreenViewModel(film: Film.defaultFilmData)
        let vc = UIHostingController(rootView: HomeScreenView(viewModel: vm))
        vc.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        navigationController.viewControllers = [vc]
        return navigationController
    }
    
}


