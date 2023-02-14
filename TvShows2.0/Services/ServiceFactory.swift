//
//  ServiceFactory.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import Foundation

class ServiceFactory {
    static var shared = ServiceFactory()
    
    private init() {}
    
    lazy var persistanceService: PersistanceServiceProtocol = {
        return PersistanceService()
    }()
}
