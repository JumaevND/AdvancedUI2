//
//  HomeViewController.swift
//  AdvancedUI2
//
//  Created by Nuriddin Jumaev on 11/29/20.
//  Copyright © 2020 Nuriddin Jumaev. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    //ui obj
    @IBOutlet weak var tableView: UITableView!
    var items: Array<Post> = Array()
    
    //first load func
    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
    }
    
    func initView(){
        title = "Table View"
        tableView.delegate = self
        tableView.dataSource = self
        
        items.append(Post(name: "Rock Johnson", time: "November 29", content: "Best time to travel", mainImage: "nature", profileImage: "person"))
        items.append(Post(name: "Sophia", time: "November 21", content: "Winter is coming", mainImage: "nature2", profileImage: "person2"))
          items.append(Post(name: "Rock Johnson", time: "November 29", content: "Best time to travel", mainImage: "nature", profileImage: "person"))
    }
    
    
    //MARK: - TableView Configuration
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.nameLabel.text = item.name
        cell.timeLabel.text = item.time
        cell.contentLabel.text = item.content
        cell.profileImage.image = UIImage(named: item.profileImage!)
        cell.mainImage.image = UIImage(named: item.mainImage!)

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }

}
