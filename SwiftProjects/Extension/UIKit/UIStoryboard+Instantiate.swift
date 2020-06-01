//
//  UIStoryboard+Instantiate.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 31/05/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {

    func instantiateViewController<T: UIViewController>() -> T {
        let identifier = String(describing: T.self)
        guard let viewController = instantiateViewController(withIdentifier: identifier) as? T else {
            fatalError("Failed to instantiate ViewController with identifier \(identifier)")
        }
        return viewController
    }

}
