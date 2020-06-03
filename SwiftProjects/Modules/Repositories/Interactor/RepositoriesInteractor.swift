//
//  RepositoriesInteractor.swift
//  SwiftProjects
//
//  Created on 01/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import RxSwift

final class RepositoriesInteractor: RepositoriesInteractorProtocol {
    
    private let remoteDataManager: RepositoriesRemoteDataManagerProtocol
    
    init(remoteDataManager: RepositoriesRemoteDataManagerProtocol) {
        self.remoteDataManager = remoteDataManager
    }

    func loadData() {

    }
    
}
