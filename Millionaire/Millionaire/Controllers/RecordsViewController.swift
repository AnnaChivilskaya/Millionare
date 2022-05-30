//
//  RecordsViewController.swift
//  Millionaire
//
//  Created by Аня on 17.05.2022.
//

import UIKit

class RecordsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
     @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       
    }
    
    private let DateFormatter: DateFormatter = {
        let DateFormatter = DateFormatter()
        DateFormatter.dateStyle = .short
        return DateFormatter
        
    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Game.shared.records.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "record", for: indexPath)
        let record = Game.shared.records[indexPath.row]
        cell.textLabel?.text = self.DateFormatter.string(from: record.date ?? Date.now)
        cell.detailTextLabel?.text = "\(record.score)"
        return cell
    }
  

}
