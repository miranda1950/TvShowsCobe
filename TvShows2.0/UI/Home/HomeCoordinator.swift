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
    private var childCoordinator: Coordinator?
    
    func start() -> UIViewController {
        return showHome()
    }
    
}

extension HomeCoordinator: HomeInteractionDelegate {
    func handleInteraction(_ interaction: HomeScreenViewModel.Interactions) {
        switch interaction {
        case .showDetail:
            showDetail()
        }
    }
    
    private func showHome() -> UIViewController {
        let vm = HomeScreenViewModel(film: Film.defaultFilmData)
        let vc = UIHostingController(rootView: HomeScreenView(viewModel: vm))
        vc.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        navigationController.viewControllers = [vc]
        return navigationController
        
    }
}

extension HomeCoordinator: DetailInteractionDelegate {
    func handleInteractions(_ interaction: DetailViewModel.DetailInteractions) {
        switch interaction {
//        case .showLanguage:
        }
    }

    private func showDetail() {
        let vm = DetailViewModel(delegate: self)
        let vc = UIHostingController(rootView: DetailView(viewModel: vm))
       print("uslo")
        navigationController.pushViewController(vc, animated: true)
    }
    
   

}


    




