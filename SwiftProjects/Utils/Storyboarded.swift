//
//  Storyboarded.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 31/05/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {

    static var storyboardName: String { get }
    static var storyboard: UIStoryboard { get }

}

extension Storyboarded {

    static var storyboard: UIStoryboard {
        return UIStoryboard(name: storyboardName, bundle: nil)
    }

}
