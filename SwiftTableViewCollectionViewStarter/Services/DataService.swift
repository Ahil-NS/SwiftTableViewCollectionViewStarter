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
    
    private var technologies =  [Technology(title: "iOS", imageName: "ios", loved: false),
                                 Technology(title: "Android", imageName: "android", loved: false),
                                 Technology(title: "Flutter", imageName: "flutter", loved: false)]

    
    private let iOSLang = [Language(title: "SWIFT", imageName: "ios"),
                               Language(title: "Obj-C", imageName: "ios")]
    
    private let androidLang = [Language(title: "Java", imageName: "android"),
                               Language(title: "Kotlin", imageName: "android")]
    
    private let flutterLang = [Language(title: "Dart", imageName: "flutter")]
    
    func deleteTech(indexPath : IndexPath){
        technologies.remove(at: indexPath.row)
    }
    
    func loveTechnology(indexpath: IndexPath){
        technologies[indexpath.row].loved = !technologies[indexpath.row].loved
    }
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
