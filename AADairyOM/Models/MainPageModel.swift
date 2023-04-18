//
//  MainPageModel.swift
//  AADairyOM
//
//  Created by Levent on 17.04.2023.
//

import Foundation

enum MainPageModel: Int, CaseIterable {
case yeni
case popular
case favori
    
    var title: String {
        switch self {
        case .yeni: return "Yeni"
        case .popular: return "Popüler"
        case .favori: return "Favori"
    }
  }
}
