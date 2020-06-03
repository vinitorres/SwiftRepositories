//
//  RepositoriesViewController.swift
//  SwiftProjects
//
//  Created on 01/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import UIKit

final class RepositoriesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    private var refreshControl = UIRefreshControl()

    var presenter: RepositoriesPresenterProtocol!
    var repositories: [Repository] = []
    
    // MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAccessibilityIdentifiers()
        applyLanguage()
        applyStyle()
        setupTableView()
        setupRefreshControl()
        presenter.viewDidLoad()
    }
    
    // MARK: - Setup Methods

    private func setupAccessibilityIdentifiers() {
        tableView.accessibilityIdentifier = "tableView"
    }
    
    private func applyLanguage() {
        self.title = String(identifier: .repositoriesTitle)
    }
    
    private func applyStyle() {
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 8, right: 0)
    }

    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(cellType: RepositoryCell.self)
        tableView.contentInset = UIEdgeInsets(top: 4, left: 0, bottom: 4, right: 0)
    }

    private func setupRefreshControl() {
        refreshControl.tintColor = .gray
        refreshControl.addTarget(self, action: #selector(didPullToRefresh), for: .valueChanged)
        tableView.refreshControl = refreshControl
    }

    // MARK: - Private Methods

    @objc private func didPullToRefresh() {
        repositories.removeAll()
        tableView.reloadData()
        presenter.refreshRepositoriesList()
    }

    private func nextPage() {
        presenter.nextPage()
    }
    
    
}

// MARK: - RepositoriesViewProtocol
extension RepositoriesViewController: RepositoriesViewProtocol {

    func updateRepositoriesList(repositories: [Repository]) {
        self.repositories.append(contentsOf: repositories)
        refreshControl.endRefreshing()
        hideProgressHud()
        tableView.reloadData()
    }
    
}

extension RepositoriesViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repositories.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RepositoryCell = tableView.dequeueReusableCell(for: indexPath)
        cell.setup(repository: repositories[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == repositories.count - 1 {
            presenter.nextPage()
        }
    }

}
