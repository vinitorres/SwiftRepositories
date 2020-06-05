//
//  RepositoriesPresenterMock.swift
//  SwiftProjectsTests
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import UIKit
@testable import SwiftProjects

class RepositoriesPresenterMock: RepositoriesPresenterProtocol {

    var view: RepositoriesViewProtocol!
    var router: RepositoriesRouterProtocol!
    var interactor: RepositoriesInteractorProtocol!

    var nextPageCalled = false
    var refreshRepositoriesListCalled = false
    var viewDidLoadCalled = false

    func nextPage() {
        nextPageCalled = true
    }

    func refreshRepositoriesList() {
        refreshRepositoriesListCalled = true
    }

    func viewDidLoad() {
        viewDidLoadCalled = true
    }

}
