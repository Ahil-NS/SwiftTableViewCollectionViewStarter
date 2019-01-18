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

    
    private let iOSLang = [Language(title: "SWIFT", imageName: "ios"),
                               Language(title: "Obj-C", imageName: "ios")]
    
    private let androidLang = [Language(title: "Java", imageName: "android"),
                               Language(title: "Kotlin", imageName: "android")]
    
    private let flutterLang = [Language(title: "Dart", imageName: "flutter")]
    
    func getTechnologies() -> [Technology]{
        return technologies
    }
    
    func getLangage(forTechTitle title : String) -> [Language]{
        switch title {
        case "iOS":
            return iOSLang
        case "Android":
            return androidLang
        case "Flutter":
            return flutterLang
        default:
            return []
        }
    }
    
}
