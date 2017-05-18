//
//  ViewController.swift
//  09 Lesson, Part 1
//
//  Created by Ika Javakhishvili on 05/1/17.
//  Copyright © 2017 Ika Javakhishvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataArray = [Trip]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var headerImageView: UIImageView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! myTableViewCell
        
        cell.cityNameLabel.text = dataArray[indexPath.row].name
        cell.flightsNumber.text = "\(dataArray[indexPath.row].flights) flights"
        cell.priceLabel.text = "\(dataArray[indexPath.row].price) >"
    
        
        
        
        return cell
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        
        tableView.dataSource = self
        tableView.delegate = self
        
         dataArray.append(Trip(name: "Ho Chi Min", flights: 2, price: 924))
         dataArray.append(Trip(name: "Manila", flights: 7, price: 723))
         dataArray.append(Trip(name: "Phuket", flights: 18, price: 345))
         dataArray.append(Trip(name: "Bangkok", flights: 4, price: 1123))
         dataArray.append(Trip(name: "Singapore", flights: 2, price: 876))
        
        
        
        headerImageView.image = #imageLiteral(resourceName: "header")
        
        
        super.viewDidLoad()
        
        
        
        
    }

}

