//
//  HomeScreenViewModel.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import Foundation
import UIKit

//AnyObject
protocol HomeInteractionDelegate: AnyObject {
    func handleInteraction(_ interaction: HomeScreenViewModel.Interactions)
}

extension HomeScreenViewModel {
    enum Interactions {
        case showDetail
    }
}

class HomeScreenViewModel: ObservableObject {
    
    var film: Film
    private weak var delegate: HomeInteractionDelegate?

    init(film: Film, delegate: HomeInteractionDelegate? = nil) {
        self.film = film
        self.delegate = delegate
    }
    
    func showDetail() {
        delegate?.handleInteraction(.showDetail)
        print("miran")
    }
    
    func printA() {
        print("Mendelski")
    }
    
}
