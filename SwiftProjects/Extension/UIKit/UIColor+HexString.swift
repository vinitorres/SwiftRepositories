//
//  UIColor+HexString.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 31/05/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    private enum Constants {
        static let hexPrefix = "#"
        static let characterCountWithAlpha = 8
        static let mask = 0x000000FF
    }
    
    convenience init(hexString: String) {
        let hexStringValue = hexString.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines).uppercased()
        let scanner   = Scanner(string: hexStringValue)
        
        if (hexStringValue.hasPrefix(Constants.hexPrefix)) {
            scanner.scanLocation = 1
        }
        
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        
        let component1 = UIColor.componentValue(color: color, at: 0)
        let component2 = UIColor.componentValue(color: color, at: 1)
        let component3 = UIColor.componentValue(color: color, at: 2)
        let component4 = UIColor.componentValue(color: color, at: 3)
        
        if UIColor.hasAlpha(hexString: hexString) {
            self.init(red: component4, green: component3, blue: component2, alpha: component1)
        } else {
            self.init(red: component3, green: component2, blue: component1, alpha: 1)
        }
    }
    
    private static func componentValue(color: UInt32, at position: UInt32) -> CGFloat {
        let shiftValue = 8 * position
        let component = Int(color >> shiftValue) & UIColor.Constants.mask
        return CGFloat(component) / 255.0
    }
    
    private static func hasAlpha(hexString: String) -> Bool {
        let hexValue = hexString.replacingOccurrences(of: Constants.hexPrefix, with: String())
        return hexValue.count == Constants.characterCountWithAlpha
    }
    
}

