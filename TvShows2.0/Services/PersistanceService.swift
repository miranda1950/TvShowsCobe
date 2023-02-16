//
//  PersistanceService.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import Foundation

protocol PersistanceServiceProtocol {
    var selectedLanguage: Language { get set}
}

enum Language: String {
    case german = "de"
    case french = "fr"
    
//    static let systemLanguage: Language = Language(rawValue: NSLocale.current.languageCode ?? "de") ?? Language.german
}

class PersistanceService: PersistanceServiceProtocol {
    
    struct Keys {
    static let language = "language"
    }
    
    let shared = UserDefaults.standard
    
    var selectedLanguage: Language {
        get {
            Language(rawValue: shared.string(forKey: Keys.language) ?? "de") ?? .german
//            shared.string(forKey: Keys.language) ?? Language.systemLanguage.rawValue -- for string
      }
        set {
            shared.set(newValue, forKey: Keys.language)
        }
    }
    
}
