//
//  Font+App.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

extension Font {
    
    struct App {
        
        static let heading = Font.system(size: 32, weight: .bold, design: .rounded)
        
        static let headingBig = Font.system(size: 36, weight: .bold, design: .rounded)
        
        static let subheading = Font.system(size: 18, weight: .bold, design: .rounded)
        
        static let button = Font.system(size: 18, weight: .semibold, design: .rounded)
        
        static let textField = Font.system(size: 18, weight: .semibold, design: .rounded)
        
        static let progress = Font.system(size: 36, weight: .heavy, design: .rounded)
    }
}
