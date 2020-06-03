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

    func loadData() 
    
}

// MARK: - DataManager
protocol RepositoriesRemoteDataManagerProtocol: class {

    func fetchRepositories()

}

// MARK: - Presenter
protocol RepositoriesPresenterProtocol: class {
    
    var view: RepositoriesViewProtocol! { get set }
    var router: RepositoriesRouterProtocol! { get set }
    var interactor: RepositoriesInteractorProtocol! { get set }

    func viewDidLoad()
    
}

// MARK: - View
protocol RepositoriesViewProtocol: class {
    
    var presenter: RepositoriesPresenterProtocol! { get set }

    func showProgressHud()
    func hideProgressHud()
    
}

// MARK: - Router
protocol RepositoriesRouterProtocol: class {
    
    var viewController: UIViewController! { get set }
    
}


