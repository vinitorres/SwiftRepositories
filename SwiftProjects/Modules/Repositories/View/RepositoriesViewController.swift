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

    var presenter: RepositoriesPresenterProtocol!
    
    // MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAccessibilityIdentifiers()
        applyLanguage()
        applyStyle()
        setupTableView()
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
    }
    
}

// MARK: - RepositoriesViewProtocol
extension RepositoriesViewController: RepositoriesViewProtocol {
    
}

extension RepositoriesViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RepositoryCell = tableView.dequeueReusableCell(for: indexPath)
        cell.setup(repository: String())
        return cell
    }

}
