//
//  RepositoriesRouter.swift
//  SwiftProjects
//
//  Created on 01/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import UIKit

final class RepositoriesRouter: RepositoriesRouterProtocol, Storyboarded {
    
    static let storyboardName = "Repositories"
    
    weak var viewController: UIViewController!
    
    static func assembleModule() -> UIViewController {
        let view: RepositoriesViewController = storyboard.instantiateViewController()
        let presenter = RepositoriesPresenter()
        let router = RepositoriesRouter()
        let remoteDataManager = RepositoriesRemoteDataManager()
        let interactor = RepositoriesInteractor(remoteDataManager: remoteDataManager)
        
        view.presenter = presenter
        
        router.viewController = view
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router

        return view
    }

}
