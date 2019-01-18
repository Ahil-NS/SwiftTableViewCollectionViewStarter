//
//  MainCollectionVC.swift
//  SwiftTableViewCollectionViewStarter
//
//  Created by MacBook on 1/18/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import UIKit

class MainCollectionVC: UIViewController {

    private(set) public var languages = [Language]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func initLanguage(tech : Technology){
        languages = DataService.instance.getLangage(forTechTitle: tech.title)
        title = tech.title
    }
}

extension MainCollectionVC: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return languages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as? LanguageCell else{return LanguageCell()}
        
        cell.configureView(lang: languages[indexPath.row] )
        return cell
    }
}
