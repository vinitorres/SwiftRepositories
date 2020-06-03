//
//  RepositoriesRemoteDataManager.swift
//  SwiftProjects
//
//  Created on 01/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import RxSwift

final class RepositoriesRemoteDataManager: RepositoriesRemoteDataManagerProtocol {

    private let repositoriesService: RepositoriesServiceProtocol
    private let scheduler = ConcurrentDispatchQueueScheduler(qos: .userInitiated)

    init(repositoriesService: RepositoriesServiceProtocol = RepositoriesService()) {
        self.repositoriesService = repositoriesService
    }


    func fetchRepositories(page: Int) -> Single<[Repository]> {
        return repositoriesService.getSwiftRepositories(page: page, scheduler: scheduler)
            .map { repositoriesDecodableList in
                return repositoriesDecodableList.repositories.map {
                    Repository(decodable: $0)
                }
        }
    }
    
}
