//
//  RepositoriesServiceProtocol.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import RxSwift

protocol RepositoriesServiceProtocol {

    func getSwiftRepositories(page: Int, scheduler: ImmediateSchedulerType?) -> Single<RepositoriesDecodable>

}
