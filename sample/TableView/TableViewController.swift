//
//  TableViewController.swift
//  sample
//
//  Created by admin on 26/02/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let animals: [String] = ["Collection View", "Web View", "Camel", "Sheep", "Goat"]
    let cellReuseIdentifier = "cell"
    let customcellReuseIdentifier = "SampleTableViewCell"
    
    @IBOutlet weak var customTV: UITableView!
    @IBOutlet weak var toptableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        // Register the table view cell class and its reuse id
        toptableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        customTV.register(UINib(nibName: "SampleTableViewCell", bundle: nil), forCellReuseIdentifier: "SampleTableViewCell")

        // (optional) include this line if you want to remove the extra empty cell divider lines
        // self.tableView.tableFooterView = UIView()

        // This view controller itself will provide the delegate methods and row data for the table view.
        toptableView.delegate = self
        toptableView.dataSource = self
        
        customTV.delegate = self
        customTV.dataSource = self

    }
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animals.count
    }

    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == toptableView {
            let cell:UITableViewCell = toptableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!

            // set the text from the data model
            cell.textLabel?.text = self.animals[indexPath.row]
            return cell
        } else {
            let cell:SampleTableViewCell = customTV.dequeueReusableCell(withIdentifier: customcellReuseIdentifier) as! SampleTableViewCell

            // set the text from the data model
            cell.titleLabel?.text = self.animals[indexPath.row]
            return cell
        }
        // create a new cell if needed or reuse an old one
        

        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == toptableView {
         return 30
        }
        return 40;
    }

    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        if indexPath.row == 0 {
             let vc = CollectionViewController(nibName: "CollectionViewController", bundle: nil)
             self.navigationController!.pushViewController(vc, animated: true)
        } else if indexPath.row == 1 {
             let vc = WebViewController(nibName: "WebViewController", bundle: nil)
             self.navigationController!.pushViewController(vc, animated: true)
        }
    }
}
