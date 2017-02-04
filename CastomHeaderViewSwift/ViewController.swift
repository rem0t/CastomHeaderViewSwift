//
//  ViewController.swift
//  CastomHeaderViewSwift
//
//  Created by Vladislav Kalaev on 04.02.17.
//  Copyright © 2017 Vladislav Kalaev. All rights reserved.
//

import UIKit

struct postStruct {
    var image : UIImage!
    var name : String!
}


var higthOfHeader : CGFloat = 44

class TableViewController: UITableViewController {
    
    override var prefersStatusBarHidden: Bool {
        return true
    }  
    
    var arrayOfPosts = [postStruct]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        arrayOfPosts = [postStruct.init(image: #imageLiteral(resourceName: "img5"), name: " Vladislav "),
                        postStruct.init(image: #imageLiteral(resourceName: "img5"), name: " Vladislav "),
                        postStruct.init(image: #imageLiteral(resourceName: "img5"), name: " Vladislav "),
                        postStruct.init(image: #imageLiteral(resourceName: "img5"), name: " Vladislav "),
                        postStruct.init(image: #imageLiteral(resourceName: "img5"), name: " Vladislav "),
                        postStruct.init(image: #imageLiteral(resourceName: "img5"), name: " Vladislav ")]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        return cell!
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfPosts.count
    }
    
   override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return higthOfHeader
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! HeaderView
        
        headerView.headerImageView.image = arrayOfPosts[section].image
        
        headerView.headerLabel.text = arrayOfPosts[section].name
        
        return headerView
    }
    
}









