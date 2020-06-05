//
//  RepositoriesRouterSpec.swift
//  SwiftProjectsTests
//
//  Created by Andre Vinicius Torres Conrado on 04/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import UIKit
import Quick
import Nimble
@testable import SwiftProjects

class RepositoriesRouterSpec: QuickSpec {

    override func spec() {

        var sut: RepositoriesRouter!

        beforeEach {
            sut = RepositoriesRouter()
        }

        afterEach {
            sut = nil
        }

        context("Verify Viper Properties") {

            it("Should viewController not be nil") {
                UIApplication.shared.windows.first?.rootViewController = RepositoriesRouter.assembleModule()
                expect(sut.viewController).toNot(beNil())
            }

//            it("Should Presenter not be nil") {
//                let presenter = sut.viewController.presenter
//                expect(presenter).toNot(beNil())
//            }
//
//            it("Should Interactor not be nil") {
//                UIApplication.shared.windows.first?.rootViewController = RepositoriesRouter.assembleModule()
//                let presenter = sut.viewController.presenter as? RepositoriesPresenter
//                let interactor = presenter?.interactor as? MoviesInteractor
//                expect(interactor).toNot(beNil())
//            }
//
//            it("Should Interactor Output not be nil") {
//                UIApplication.shared.windows.first?.rootViewController = sut.instantiateView()
//                let presenter = sut.view.presenter as? MoviesPresenter
//                let interactor = presenter?.interactor as? MoviesInteractor
//                expect(interactor?.output).toNot(beNil())
//            }

        }

    }
}
