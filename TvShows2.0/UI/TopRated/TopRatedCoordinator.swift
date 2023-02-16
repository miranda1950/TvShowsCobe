//
//  TopRatedCoordinator.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import Foundation
import SwiftUI

final class TopRatedCoordinator: Coordinator {
    private let navigationController = UINavigationController()
    
    func start() -> UIViewController {
        return showTopRated()
    }
    
    private func showTopRated()-> UIViewController {
        let vm = TopRatedScreenViewModel(film: Film.defaultFilmData)
        let vc = UIHostingController(rootView: TopRatedView(viewModel: vm))
        vc.tabBarItem = UITabBarItem(title: "TopRated", image: UIImage(systemName: "heart"), selectedImage: UIImage(systemName: "heart.fill"))
        navigationController.viewControllers = [vc]
        return navigationController
    }
}
