//
//  String+Extensions.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import Foundation

extension String {
    
    func localized() -> String {
        let lang = ServiceFactory.shared.persistanceService.selectedLanguage.rawValue
        let path = Bundle.main.path(forResource: lang, ofType: "lproj")
        let bundle = Bundle(path: path!)
        
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}
