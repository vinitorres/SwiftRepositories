//
//  RepositoriesPresenterTests.swift
//  SwiftProjectsTests
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import XCTest
import Nimble
import Quick
@testable import SwiftProjects

class RepositoriesPresenterSpec: QuickSpec {

    override func spec() {

        var sut: RepositoriesPresenterMock!

        beforeEach {
            sut = RepositoriesPresenterMock()
            sut.router = RepositoriesRouterMock()
            sut.view = RepositoriesViewControllerMock()
            sut.interactor = RepositoriesInteractorMock()
        }

        afterEach {
            sut = nil
        }

        context("Verify Viper Properties") {

            it("Should interactor not be nil") {
                expect(sut.interactor).toNot(beNil())
            }

            it("Should router not be nil") {
                expect(sut.router).toNot(beNil())
            }

            it("Should view not be nil") {
                expect(sut.view).toNot(beNil())
            }

        }

        context("Methods called") {

            it("Should nextPageCalled true") {
                sut.nextPage()
                expect(sut.nextPageCalled).to(beTrue())
            }

            it("Should viewDidLoadCalled true") {
                sut.viewDidLoad()
                expect(sut.viewDidLoadCalled).to(beTrue())
            }


            it("Should refreshRepositoriesListCalled true") {
                sut.refreshRepositoriesList()
                expect(sut.refreshRepositoriesListCalled).to(beTrue())
            }


        }

    }

}
