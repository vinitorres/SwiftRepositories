//
//  RepositoriesService.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire
import RSReactiveRequest
import CodableAlamofire

final class RepositoriesService: RepositoriesServiceProtocol {

    private enum API: String, ServiceApi {
        case searchSwiftRepositories = "search/repositories?q=language:swift&sort=stars&page={page}"
    }

    private let requestManager: RequestManagerProtocol

    init(requestManager: RequestManagerProtocol = RequestManager()) {
        self.requestManager = requestManager
    }
    
    func getSwiftRepositories(page: Int, scheduler: ImmediateSchedulerType?) -> Single<RepositoriesDecodable> {
        let endpoint = Endpoint(method: .get, api: API.searchSwiftRepositories, pathParameters: ["page": page.description])
        return requestManager.request(endpoint: endpoint)
        .asSingle(scheduler: scheduler)
    }

}
