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
    
    func updateView(tech: Technology){
        techImageView.image = UIImage(named: tech.imageName)
        techTitleLabel.text = tech.title
    }
    
}
