//
//  SportsTableViewController.swift
//  Cognizant-Test
//
//  Created by Juhel on 26/03/2021.
//

import UIKit

class SportsTableViewController: UITableViewController {
    
    var sportsArray = ["Football", "Cricket", "Rugby", "Tennis", "Athletics", "Baseball", "Badminton", "Judo", "Table tennis"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sportsArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sportsCell", for: indexPath) as! SportsTableViewCell

        let sport = sportsArray[indexPath.row]
        cell.sportsLabel.text = sport

        return cell
    }

}
