//
//  Repository.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation

struct Repository {

    let id: Double
    let name: String
    let description: String
    let owner: Owner
    let stargazersCount: Int

    init(decodable: RepositoryDecodable) {
        id = decodable.id
        name = decodable.name
        description = decodable.description
        owner = Owner(decodable: decodable.owner)
        stargazersCount = decodable.stargazersCount
    }

    init() {
        id = Double()
        name = String()
        description = String()
        owner = Owner()
        stargazersCount = Int()
    }

}
