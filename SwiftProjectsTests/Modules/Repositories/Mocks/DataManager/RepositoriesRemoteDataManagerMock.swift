//
//  RepositoriesRemoteDataManagerMock.swift
//  SwiftProjectsTests
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import RxTest
import RxSwift
@testable import SwiftProjects

class RepositoriesRemoteDataManagerMock: RepositoriesRemoteDataManagerProtocol {

    private let repositoriesServiceSuccess: RepositoriesServiceProtocol = RepositoriesServicesSuccessMock()
    private let repositoriesServiceFailure: RepositoriesServiceProtocol = RepositoriesServicesFailureMock()

    private let scheduler = TestScheduler(initialClock: 1)

    var fetchRepositoriesDidSucceedCalled = false
    var fetchRepositoriesDidFailedCalled = false

    func fetchRepositories(page: Int) -> Single<[Repository]> {
        return repositoriesServiceSuccess.getSwiftRepositories(page: page, scheduler: scheduler)
            .map { repositoriesDecodableList in
                return repositoriesDecodableList.repositories.map {
                    Repository(decodable: $0)
                }
        }
    }

    func fetchRepositoriesDidSucceed() {
        fetchRepositoriesDidSucceedCalled = true

    }

    func fetchMoviesDidFailed(_ error: Error) {
        fetchRepositoriesDidFailedCalled = true
    }


}
