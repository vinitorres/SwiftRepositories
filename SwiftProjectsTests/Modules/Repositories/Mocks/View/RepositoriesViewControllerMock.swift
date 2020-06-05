//
//  RepositoriesViewControllerMock.swift
//  SwiftProjectsTests
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
@testable import SwiftProjects

class RepositoriesViewControllerMock: RepositoriesViewProtocol {

    var presenter: RepositoriesPresenterProtocol! = RepositoriesPresenterMock()

    var updateRepositoriesListCalled = false
    var showProgressHudCalled = false
    var hideProgressHudCalled = false

    func updateRepositoriesList(repositories: [Repository]) {
        updateRepositoriesListCalled = true
    }

    func showProgressHud() {
        showProgressHudCalled = true
    }

    func hideProgressHud() {
        hideProgressHudCalled = true
    }

}
