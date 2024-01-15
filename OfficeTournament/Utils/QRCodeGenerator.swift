//
//  QRCodeGenerator.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 15/01/2024.
//

import SwiftUI
import CoreGraphics

struct QRCodeGenerator {
    
    static func generate(from data: Data?, color: UIColor, backgroundColor: UIColor) -> UIImage? {
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            filter.setValue("H", forKey: "inputCorrectionLevel")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            
            if let output = filter.outputImage?.transformed(by: transform) {
                if let coloredOutput = applyColors(image: output, CIColor.black, CIColor.white) {
                    return UIImage(ciImage: coloredOutput)
                }
            }
        }
        return nil
    }
    
    static func generate(from payload: QRCodePayload, color: UIColor = .black, backgroundColor: UIColor = .white) -> UIImage? {
        do {
            let json = try JSONEncoder().encode(payload)
            if let jsonString = String(data: json, encoding: .utf8) {
                let data = jsonString.data(using: String.Encoding.utf8)
                return generate(from: data, color: color, backgroundColor: backgroundColor)
            }
        } catch let error {
            print(error)
            return nil
        }
        return nil
    }
    
    private static func applyColors(image: CIImage, _ color: CIColor, _ backgroundColor: CIColor) -> CIImage? {
        guard let colorFilter = CIFilter(name: "CIFalseColor") else {
            return nil
        }
        colorFilter.setValue(image, forKey: kCIInputImageKey)
        colorFilter.setValue(color, forKey: "inputColor0")
        colorFilter.setValue(backgroundColor, forKey: "inputColor1")
        return colorFilter.outputImage
    }
}

extension QRCodeGenerator {
    
    static func generateImage(from payload: QRCodePayload) -> Image? {
        guard let generatedImage = generate(from: payload) else {
            return nil
        }
        return Image(uiImage: generatedImage)
    }
}
