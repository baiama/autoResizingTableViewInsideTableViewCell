//
//  ViewController.swift
//  AutoResizingTableViewInsideTableViewCell
//
//  Created by Baiaman on 06.12.2018.
//  Copyright © 2018 Baiaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var firstTableView: UITableView!
    var items = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstTableView.delegate = self
        firstTableView.dataSource = self
        items.append(2)
        items.append(4)
        items.append(7)
        items.append(23)
        items.append(4)
        items.append(1)
        items.append(4)
        items.append(0)
        items.append(12)
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
        
        cell.count = items[indexPath.row]
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}

