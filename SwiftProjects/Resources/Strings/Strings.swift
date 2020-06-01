 //
//  Strings.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 31/05/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation

 extension String {

     enum Identifier: String {

         // MARK: - Repositories
        case repositoriesTitle

     }

     init(identifier: Identifier, comment: String = String()) {
         self.init(stringLiteral: NSLocalizedString(identifier.rawValue, comment: comment))
     }

     init(identifier: Identifier, count: Int, comment: String = String()) {
         let format = NSLocalizedString(identifier.rawValue, comment: String())
         self.init(format: format, count)
     }

 }

