//
//  TechnologyCell.swift
//  SwiftTableViewCollectionViewStarter
//
//  Created by MacBook on 1/17/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import UIKit

class TechnologyCell: UITableViewCell {

    @IBOutlet weak var techImageView: UIImageView!
    @IBOutlet weak var techTitleLabel: UILabel!
    @IBOutlet weak var loveImageView: UIImageView!
    
    func updateView(tech: Technology){
        techImageView.image = UIImage(named: tech.imageName)
        techTitleLabel.text = tech.title
        loveImageView.image = tech.loved ? #imageLiteral(resourceName: "icon_love") : #imageLiteral(resourceName: "icon_smile")
    }
}
