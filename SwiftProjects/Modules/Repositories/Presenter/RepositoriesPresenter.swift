//
//  RepositoriesPresenter.swift
//  SwiftProjects
//
//  Created on 01/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import UIKit

final class RepositoriesPresenter: RepositoriesPresenterProtocol {
    
    weak var view: RepositoriesViewProtocol!
    var router: RepositoriesRouterProtocol!
    var interactor: RepositoriesInteractorProtocol!
    
}
