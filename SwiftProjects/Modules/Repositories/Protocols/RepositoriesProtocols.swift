//
//  RepositoriesProtocols.swift
//  SwiftProjects
//
//  Created on 01/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Interactor
protocol RepositoriesInteractorProtocol: class {
    
}

// MARK: - DataManager
protocol RepositoriesRemoteDataManagerProtocol: class {
    
}

// MARK: - Presenter
protocol RepositoriesPresenterProtocol: class {
    
    var view: RepositoriesViewProtocol! { get set }
    var router: RepositoriesRouterProtocol! { get set }
    var interactor: RepositoriesInteractorProtocol! { get set }
    
}

// MARK: - View
protocol RepositoriesViewProtocol: class {
    
    var presenter: RepositoriesPresenterProtocol! { get set }
    
}

// MARK: - Router
protocol RepositoriesRouterProtocol: class {
    
    var viewController: UIViewController! { get set }
    
}


