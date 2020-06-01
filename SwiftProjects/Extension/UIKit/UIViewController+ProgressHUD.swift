//
//  UIViewController+ProgressHUD.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 31/05/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import SVProgressHUD

extension UIViewController {
    
    func showProgressHud() {
        SVProgressHUD.show()
    }
    
    func hideProgressHud() {
        SVProgressHUD.dismiss()
    }
    
}
