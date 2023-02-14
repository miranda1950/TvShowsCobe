//
//  HomeScreenViewModel.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import Foundation
import UIKit

class HomeScreenViewModel: ObservableObject {
    
    var film: Film
    
    init(film: Film) {
        self.film = film
    }
    
    func fillFilms() {
        
        film = Film.defaultFilmData
    }
    
    
}
