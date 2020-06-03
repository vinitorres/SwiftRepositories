//
//  RepositoryDecodable.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation

struct RepositoryDecodable: Decodable {

    let id: Double
    let name: String
    let description: String
    let owner: OwnerDecodable
    let stargazersCount: Double

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case description = "description"
        case owner = "owner"
        case stargazersCount = "stargazers_count"
    }
    
}
