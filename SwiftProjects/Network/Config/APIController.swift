//
//  APIController.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 31/05/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import RSReactiveRequest
import Alamofire

final class APIController: APIControllerProtocol {

    let manager: Alamofire.SessionManager

    init() {
        URLCache.shared.removeAllCachedResponses()
        let configuration = URLSessionConfiguration.ephemeral
        configuration.timeoutIntervalForRequest = 30
        configuration.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData

        let manager = Alamofire.SessionManager(configuration: configuration)
        self.manager = manager
    }

    var baseURL: String {
        guard let url = Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as? String else {
            fatalError("Fail to load base url, implement BASE_URL key on info.plist and add in project settings")
        }

        return url
    }

}
