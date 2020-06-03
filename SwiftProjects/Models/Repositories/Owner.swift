//
//  Owner.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 03/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation

struct Owner {

    let login: String
    let avatarUrl: String

    init(decodable: OwnerDecodable) {
        login = decodable.login
        avatarUrl = decodable.avatarUrl
    }

    init() {
        login = String()
        avatarUrl = String()
    }

}
