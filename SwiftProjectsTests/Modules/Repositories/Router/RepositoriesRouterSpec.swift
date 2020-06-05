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

            it("Should assembleModule not be nil") {
                expect(RepositoriesRouter.assembleModule).toNot(beNil())
            }

        }

    }
}
