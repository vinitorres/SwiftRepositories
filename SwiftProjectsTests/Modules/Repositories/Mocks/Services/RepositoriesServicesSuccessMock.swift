//
//  RepositoriesServicesSuccessMock.swift
//  SwiftProjectsTests
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import RxSwift
@testable import SwiftProjects

class RepositoriesServicesSuccessMock: RepositoriesServiceProtocol {
    
    func getSwiftRepositories(page: Int, scheduler: ImmediateSchedulerType?) -> Single<RepositoriesDecodable> {

        let path = Bundle.main.path(forResource: "repositoriesJSON", ofType: "json")!

        let jsonData = try! Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)

        let decodable = try! JSONDecoder().decode(RepositoriesDecodable.self,
                                                          from: jsonData)


        return Single.create { event -> Disposable in

            event(.success(decodable))
            return Disposables.create()
        }
    }


}
