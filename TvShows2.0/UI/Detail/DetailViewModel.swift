//
//  DetailViewModel.swift
//  TvShows2.0
//
//  Created by COBE on 15.02.2023..
//

import SwiftUI

protocol DetailInteractionDelegate: AnyObject {
    func handleInteractions(_ interaction: DetailViewModel.DetailInteractions)
}

extension DetailViewModel {
    enum DetailInteractions {
//        case showLanguage
    }
}

class DetailViewModel: ObservableObject {
    private weak var delegate: DetailInteractionDelegate?
    
    init(delegate: DetailInteractionDelegate? = nil ) {
        self.delegate = delegate
    }
    
    
   
}
