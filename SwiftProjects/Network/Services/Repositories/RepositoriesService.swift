//
//  RepositoriesService.swift
//  Bridge
//
//  Created by Andre Vinicius Torres Conrado on 13/05/20.
//  Copyright © 2020 Redspark. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire
import RSReactiveRequest
import CodableAlamofire

final class RepositoriesService: RepositoriesServiceProtocol {

    private enum API: String, ServiceApi {
        case searchSwiftRepositories = "search/repositories?q=language:swift&sort=stars"
    }

    private let requestManager: RequestManagerProtocol

    init(requestManager: RequestManagerProtocol = RequestManager()) {
        self.requestManager = requestManager
    }
    
    func getSwiftRepositories(page: Int, scheduler: ImmediateSchedulerType?) -> Single<RepositoriesDecodable> {
        let endpoint = Endpoint(method: .get, api: API.searchSwiftRepositories)
        return requestManager.request(endpoint: endpoint)
        .asSingle(scheduler: scheduler)
    }

}
