//
//  Film.swift
//  TvShows2.0
//
//  Created by COBE on 14.02.2023..
//

import Foundation
import UIKit

struct Film {
   
    var image: UIImage?
    var title: String
    var year: String
    
    static var defaultFilmData: Self {
        Film(image: UIImage(systemName: "questionmark"), title: "Harry Potter", year: "1999")
    }
    
}

