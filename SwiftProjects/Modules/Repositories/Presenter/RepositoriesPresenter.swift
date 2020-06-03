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

    var currentPage = 1

    func viewDidLoad() {
        loadData()
    }

    func refreshRepositoriesList() {
        currentPage = 1
        loadData()
    }

    private func loadData() {
        view.showProgressHud()
        interactor.fetchRepositories(page: currentPage)
            .observeOn(MainScheduler.instance)
            .subscribe(onSuccess: { [weak self] repositories in
                self?.view.hideProgressHud()
                self?.view.updateRepositoriesList(repositories: repositories)
            }, onError: { [weak self] error in
                self?.view.hideProgressHud()
            })
        .disposed(by: disposeBag)
    }

    func nextPage() {
        currentPage += 1
        loadData()
    }
    
}
