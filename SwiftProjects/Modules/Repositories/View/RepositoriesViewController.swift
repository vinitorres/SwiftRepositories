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
        
    }

    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(cellType: RepositoryCell.self)

        refreshControl.tintColor = .gray
        refreshControl.addTarget(self, action: #selector(didPullToRefresh), for: .valueChanged)
        tableView.refreshControl = refreshControl
    }

    func updateRepositoriesList(repositories: [Repository]) {
        self.repositories.append(contentsOf: repositories)
        tableView.reloadData()
    }

    @objc func didPullToRefresh() {
        presenter.refreshRepositoriesList()
    }
    
    
}

// MARK: - RepositoriesViewProtocol
extension RepositoriesViewController: RepositoriesViewProtocol {
    
}

extension RepositoriesViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return repositories.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RepositoryCell = tableView.dequeueReusableCell(for: indexPath)
        cell.setup(repository: repositories[indexPath.section])
        return cell
    }

}
