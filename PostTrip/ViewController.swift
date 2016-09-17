//
//  TripsViewController.swift
//  PostTrip
//
//  Created by Pavol Polacek on 17.09.16.
//  Copyright © 2016 Pavol Polacek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tripsTableView: UITableView!
    
    var trips: [Trip] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        trips = makeTrips()
        
        tripsTableView.dataSource = self
        tripsTableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trips.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let trip = trips[indexPath.row]
        
        cell.textLabel?.text = trip.name
        
        return cell
    }
    
    func convertString2Date(dateString: String) -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        let newDate = formatter.date(from: dateString)
        return newDate!
    }
 
    func makeTrips() -> [Trip] {
        let trip1 = Trip()
        trip1.description = "It was the best trip"
        trip1.from = convertString2Date(dateString: "20-01-2010")
        trip1.to = convertString2Date(dateString: "30-01-2010")
        trip1.name = "First trip to Lago"
        trip1.passangers = 2
        trip1.totalExpenses = 0.00
        
        let trip2 = Trip()
        trip2.description = "It was nothing for remember"
        trip2.from = convertString2Date(dateString: "20-12-2012")
        trip2.to = convertString2Date(dateString: "30-12-2012")
        trip2.name = "First trip to Spain"
        trip2.passangers = 2
        trip2.totalExpenses = 0.00
       
        
        return [trip1, trip2]
        
    }

}

