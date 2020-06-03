//
//  NibReusable.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 01/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import Foundation
import UIKit

protocol Reusable {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

protocol NibReusable: Reusable {
    static var nib: UINib { get }
}

extension NibReusable {
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
}

extension UITableView {

    final func register<T: UITableViewCell & NibReusable>(cellType: T.Type) {
        register(cellType.nib, forCellReuseIdentifier: cellType.reuseIdentifier)
    }

    final func register<T: UITableViewHeaderFooterView & NibReusable>(viewType: T.Type) {
        register(viewType.nib, forHeaderFooterViewReuseIdentifier: viewType.reuseIdentifier)
    }

    final func dequeueReusableCell<T: UITableViewCell & Reusable>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Failed to dequeue reusable cell with identifier '\(T.reuseIdentifier)'. Did you forget to register the cell first?")
        }
        return cell
    }

    final func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView & Reusable>() -> T {
        guard let headerFooterView = dequeueReusableHeaderFooterView(withIdentifier: T.reuseIdentifier) as? T else {
            fatalError("Failed to dequeue reusable headerFooterView with identifier '\(T.reuseIdentifier)'. Did you forget to register the headerFooterView first?")
        }
        return headerFooterView
    }

}
