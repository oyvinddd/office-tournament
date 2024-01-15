//
//  Font+App.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 12/01/2024.
//

import SwiftUI

extension Font {
    
    struct App {
        
        static let normal = Font.system(size: 16, weight: .semibold, design: .rounded)
        
        static let small = Font.system(size: 12, weight: .bold, design: .rounded)
        
        static let heading = Font.system(size: 24, weight: .bold, design: .rounded)
        
        static let headingBig = Font.system(size: 28, weight: .bold, design: .rounded)
        
        static let subheading = Font.system(size: 18, weight: .bold, design: .rounded)
        
        static let button = Font.system(size: 18, weight: .semibold, design: .rounded)
        
        static let buttonSmall = Font.system(size: 14, weight: .semibold, design: .rounded)
        
        static let buttonBig = Font.system(size: 22, weight: .bold, design: .rounded)
        
        static let menuButton = Font.system(size: 24, weight: .semibold, design: .rounded)
        
        static let textField = Font.system(size: 18, weight: .semibold, design: .rounded)
        
        static let progress = Font.system(size: 36, weight: .heavy, design: .rounded)
    }
}
