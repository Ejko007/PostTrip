//
//  TripTableViewController.swift
//  PostTrip
//
//  Created by Pavol Polacek on 18.09.16.
//  Copyright © 2016 Pavol Polacek. All rights reserved.
//

import UIKit

var trips: [Trip] = []

class TripTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()

        trips = makeTrips()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func makeTrips() -> [Trip] {
        let trip1 = Trip()
        let countryStr: [String] = ["CZ","US"]
        
        trip1.description = "It was the best trip"
        trip1.from = convertString2Date(dateString: "20.01.2010")
        trip1.to = convertString2Date(dateString: "30.01.2010")
        trip1.name = "First trip to Lago"
        trip1.passangers = 2
        trip1.totalExpenses = 12223.45
        trip1.homePicture = UIImage(named: "1")!
        trip1.rate = 2.5
        trip1.countries[0] = UIImage(named: countryStr[0])!
        //trip1.countries = UIImage(named: "CZ")!
        
        let trip2 = Trip()
        trip2.description = "It was nothing for remember"
        trip2.from = convertString2Date(dateString: "20.12.2012")
        trip2.to = convertString2Date(dateString: "30.12.2012")
        trip2.name = "First trip to Spain"
        trip2.passangers = 1
        trip2.totalExpenses = 75864.78
        trip2.homePicture = UIImage(named: "2")!
        trip2.rate = 3.5
        trip2.countries[0] = UIImage(named: countryStr[0])!
        //trip2.countries = UIImage(named: "CZ")!
        
        let trip3 = Trip()
        trip3.description = "It was nothing for remember"
        trip3.from = convertString2Date(dateString: "20.07.2013")
        trip3.to = convertString2Date(dateString: "27.07.2013")
        trip3.name = "Other trip to Alps"
        trip3.passangers = 4
        trip3.totalExpenses = 45674.65
        trip3.homePicture = UIImage(named: "3")!
        trip3.rate = 1.0
        trip3.countries[0] = UIImage(named: countryStr[0])!
        //trip3.countries = UIImage(named: "CZ")!

 
        let trip4 = Trip()
        trip4.description = "It was nothing for remember"
        trip4.from = convertString2Date(dateString: "01.07.2015")
        trip4.to = convertString2Date(dateString: "17.07.2015")
        trip4.name = "Other trip to mountains"
        trip4.passangers = 3
        trip4.totalExpenses = 23412.99
        trip4.homePicture = UIImage(named: "4")!
        trip4.rate = 4.5
        trip4.countries[0] = UIImage(named: countryStr[0])!
        //trip4.countries = UIImage(named: "CZ")!


        let trip5 = Trip()
        trip5.description = "It was many events to remember"
        trip5.from = convertString2Date(dateString: "01.07.2016")
        trip5.to = convertString2Date(dateString: "17.07.2016")
        trip5.name = "Few days spent in Germany and Austria"
        trip5.passangers = 1
        trip5.totalExpenses = 3245.87
        trip5.homePicture = UIImage(named: "5")!
        trip5.rate = 5.0
        trip5.countries[0] = UIImage(named: countryStr[0])!
        //trip5.countries = UIImage(named: "CZ")!
        
        return [trip1, trip2, trip3, trip4, trip5]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return trips.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "TripTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TripTableViewCell
        let trip = trips[indexPath.row]
        
        cell.tripNameLbl.text = trip.name
        cell.tripHomePictureImg.image = trip.homePicture
        cell.tripDateFromLbl.text = convertDate2String(dateValue: trip.from)
        cell.tripDateToLbl.text = convertDate2String(dateValue: trip.to)
        cell.tripRateView.settings.fillMode = .precise
        cell.tripRateView.rating = trip.rate
        cell.tripCountry1.image = trip.countries[0]
        //cell.tripCountry1.image = trip.countries
        cell.tripTotalExpenseLbl.text = "\(trip.totalExpenses)"
        cell.tripPassangersNrLbl.text = "\(trip.passangers)"
        
        // Configure the cell...

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
