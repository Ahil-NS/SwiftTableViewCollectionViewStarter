//
//  ViewController.swift
//  SwiftTableViewCollectionViewStarter
//
//  Created by MacBook on 1/17/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import UIKit

class MainTableVC: UIViewController {
    
    @IBOutlet weak var technologyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension MainTableVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getTechnologies().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as? TechnologyCell else {return TechnologyCell()}
        configureView(for: cell, at: indexPath)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let cell = tableView.cellForRow(at: indexPath) as? TechnologyCell{
            DataService.instance.loveTechnology(indexpath: indexPath)
            configureView(for: cell, at: indexPath)
        }
        //let tech = DataService.instance.getTechnologies()[indexPath.row]
        // performSegue(withIdentifier: "toLanguage", sender: tech)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        DataService.instance.deleteTech(indexPath: indexPath)
        tableView.deleteRows(at: [indexPath], with: .automatic)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toLanguage"){
            if let CollectionVC = segue.destination as? MainCollectionVC{
                let barBtn = UIBarButtonItem()
                barBtn.title = ""
                navigationItem.backBarButtonItem = barBtn
                assert(sender as? Technology != nil)
                CollectionVC.initLanguage(tech: sender as! Technology)
            }
        }
    }
    
    func configureView(for cell: TechnologyCell, at indexPath: IndexPath){
        let items = DataService.instance.getTechnologies()[indexPath.row]
        cell.updateView(tech: items)
    }
    
    
}

