//
//  LanguageCell.swift
//  SwiftTableViewCollectionViewStarter
//
//  Created by MacBook on 1/18/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import UIKit

class LanguageCell: UICollectionViewCell {
    
    @IBOutlet weak var languageImageView: UIImageView!
    @IBOutlet weak var languageTitleLabel: UILabel!
    
    func configureView(lang : Language){
        languageImageView.image = UIImage(named: lang.imageName)
        languageTitleLabel.text = lang.title
    }

}
