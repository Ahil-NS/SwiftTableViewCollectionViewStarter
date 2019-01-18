//
//  Technology.swift
//  SwiftTableViewCollectionViewStarter
//
//  Created by MacBook on 1/17/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import Foundation

struct Technology {
    
    private(set) public var title: String
    private(set) public var imageName: String
    var loved: Bool
    
    init(title: String, imageName: String, loved: Bool ){
        self.title = title
        self.imageName = imageName
        self.loved = loved
    }
    
    mutating func toggleLove(){
        loved = !loved
    }
}
