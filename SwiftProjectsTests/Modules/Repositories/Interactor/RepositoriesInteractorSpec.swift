//
//  RepositoriesInteractorTests.swift
//  SwiftProjectsTests
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import XCTest
import Nimble
import Quick
@testable import SwiftProjects

class RepositoriesInteractorSpec: QuickSpec {

    override func spec() {

        var sut: RepositoriesInteractorMock!

        beforeEach {
            sut = RepositoriesInteractorMock()
        }

        afterEach {
            sut = nil
        }

        context("Called Methods") {

            it("Should fetchRepositories be called") {
                _ = sut.fetchRepositories(page: Int())
                expect(sut.fetchRepositoriesCalled).to(beTrue())
            }

        }
    }

}
