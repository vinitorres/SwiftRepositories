//
//  RepositoryCell.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 01/06/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import UIKit
import AlamofireImage

final class RepositoryCell: UITableViewCell, NibReusable {

    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var labelAuthor: UILabel!
    @IBOutlet weak var labelStarsCount: UILabel!
    @IBOutlet weak var imageViewAvatar: UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
        applyStyles()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setup(repository: Repository) {
        labelTitle.text = repository.name
        labelDescription.text = repository.description
        labelAuthor.text = repository.owner.login
        labelStarsCount.text = "⭐️ \(repository.stargazersCount.description)"
        imageViewAvatar.af_setImage(withURL: URL(string: repository.owner.avatarUrl)!)
    }

    private func applyStyles() {

        viewBackground.layer.borderColor = UIColor.lightGray.cgColor
        viewBackground.layer.borderWidth = 0.5
        viewBackground.layer.cornerRadius = 8

        imageViewAvatar.layer.cornerRadius = imageViewAvatar.frame.size.height/2
    }
    
}
