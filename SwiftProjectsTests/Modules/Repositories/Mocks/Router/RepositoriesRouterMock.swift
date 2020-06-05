//
//  RepositoriesRouterMock.swift
//  SwiftProjectsTests
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import UIKit
@testable import SwiftProjects

class RepositoriesRouterMock: RepositoriesRouterProtocol {

    var viewController: UIViewController!

    static var assembleModuleCalled: Bool = false

    static func assembleModule() -> UIViewController {
        assembleModuleCalled = true
        return UIViewController()
    }
}
