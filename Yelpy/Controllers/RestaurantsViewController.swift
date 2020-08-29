//
//  ViewController.swift
//  Yelpy
//
//  Created by Memo on 5/21/20.
//  Copyright © 2020 memo. All rights reserved.
//

import UIKit
import AlamofireImage

class RestaurantsViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var restaurantArray: [[String: Any?]] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        

    }
    
    func getAPIData(){
        API.getRestaurants(completion: restaurants) in gurad let restaurants = restaurants else {
            return
        }
        print(restaurants)
        self.restaurantArray = restaurants
    }

}

func tableView( tableView: U)

// ––––– TODO: Create tableView Extension and TableView Functionality


