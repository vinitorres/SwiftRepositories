//
//  NetworkSetup.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 31/05/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import RSReactiveRequest

final class NetworkSetup {

    private init() {
        // Instantiate only on setup function
    }

    static func initialize() {
        let networkSetup = NetworkSetup()
        networkSetup.setupRequestManager()
    }

    private func setupRequestManager() {
        let config = RequestManagerConfig(apiController: APIController(),
                                          errorParser: nil,
                                          logLevel: .all)

        RequestManager.config = config
    }

}
