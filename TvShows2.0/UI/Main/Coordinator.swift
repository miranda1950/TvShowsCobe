//
//  Coordinator.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import Foundation
import UIKit

//:Any object???
public protocol Coordinator: AnyObject {
    
    func start() -> UIViewController
}
