//
//  RepositoriesProtocols.swift
//  SwiftProjects
//
//  Created on 01/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

// MARK: - Interactor
protocol RepositoriesInteractorProtocol: class {

    func fetchRepositories(page: Int) -> Single<[Repository]>
    
}

// MARK: - DataManager
protocol RepositoriesRemoteDataManagerProtocol: class {

    func fetchRepositories(page: Int) -> Single<[Repository]>
    
}

// MARK: - Presenter
protocol RepositoriesPresenterProtocol: class {
    
    var view: RepositoriesViewProtocol! { get set }
    var router: RepositoriesRouterProtocol! { get set }
    var interactor: RepositoriesInteractorProtocol! { get set }

    func nextPage()
    func refreshRepositoriesList()
    func viewDidLoad()
    
}

// MARK: - View
protocol RepositoriesViewProtocol: class {
    
    var presenter: RepositoriesPresenterProtocol! { get set }

    func updateRepositoriesList(repositories: [Repository])
    func showProgressHud()
    func hideProgressHud()
    
}

// MARK: - Router
protocol RepositoriesRouterProtocol: class {
    
    var viewController: UIViewController! { get set }
    
}


