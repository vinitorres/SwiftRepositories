//
//  RepositoriesPresenter.swift
//  SwiftProjects
//
//  Created on 01/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import UIKit
import RxSwift

final class RepositoriesPresenter: RepositoriesPresenterProtocol {
    
    weak var view: RepositoriesViewProtocol!
    var router: RepositoriesRouterProtocol!
    var interactor: RepositoriesInteractorProtocol!

    private let disposeBag = DisposeBag()

    func viewDidLoad() {
        loadData()
    }

    private func loadData() {
        view.showProgressHud()

        //TODO:

        view.hideProgressHud()

    }
    
}
