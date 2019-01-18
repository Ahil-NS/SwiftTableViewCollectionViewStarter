//
//  Language.swift
//  SwiftTableViewCollectionViewStarter
//
//  Created by MacBook on 1/18/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import Foundation

struct Language{
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String ) {
        self.title = title
        self.imageName = imageName
    }
    
}
