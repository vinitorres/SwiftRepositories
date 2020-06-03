//
//  RepositoriesDecodable.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation

struct RepositoriesDecodable: Decodable {

    let totalCount: Double
    let incompleteResults: Bool
    let repositories: [RepositoryDecodable]

    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case incompleteResults = "incomplete_results"
        case repositories = "items"
    }

}
