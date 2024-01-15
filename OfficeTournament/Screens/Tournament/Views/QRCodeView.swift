//
//  QRCodeView.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 15/01/2024.
//

import SwiftUI

struct QRCodeView: View {
    
    var body: some View {
        
        QRCodeGenerator.generateImage(from: QRCodePayload(playerId: "test_id"))!
            .frame(width: 130, height: 130)
            .background(.white)
    }
}

#Preview {
    QRCodeView()
}
