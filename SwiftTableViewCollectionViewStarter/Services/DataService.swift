//
//  DataService.swift
//  SwiftTableViewCollectionViewStarter
//
//  Created by MacBook on 1/17/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    private let technologies =  [Technology(title: "iOS", imageName: "ios"),
                                 Technology(title: "Android", imageName: "android"),
                                 Technology(title: "Flutter", imageName: "flutter")]

    
    func getTechnologies() -> [Technology]{
        return technologies
    }
    
}
