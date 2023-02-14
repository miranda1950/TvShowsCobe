//
//  PersistanceService.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import Foundation

protocol PersistanceServiceProtocol {
    var language: String { get set}
}

enum Language: String {
    case german = "de"
    case french = "fr"
    
    static let systemLanguage: Language = Language(rawValue: NSLocale.current.languageCode ?? "de") ?? Language.german
}

class PersistanceService: PersistanceServiceProtocol {
    
    struct Keys {
    static let language = "language"
    }
    
    let shared = UserDefaults.standard
    
    var language: String {
        get {
            if let language = shared.string(forKey: Keys.language) {
                return language
            } else {
                shared.set(Language.systemLanguage.rawValue, forKey: Keys.language)
                return Language.systemLanguage.rawValue
            }
        }
        set {
            shared.set(newValue, forKey: Keys.language)
        }
    }
    
}
