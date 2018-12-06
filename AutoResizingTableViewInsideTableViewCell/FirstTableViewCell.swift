//
//  FirstTableViewCell.swift
//  AutoResizingTableViewInsideTableViewCell
//
//  Created by Baiaman on 06.12.2018.
//  Copyright © 2018 Baiaman. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var count = 0
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension FirstTableViewCell: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
        
        cell.secondLabel.text = "some text \(indexPath.row)"
        return cell
    }
    
}
