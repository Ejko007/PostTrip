//
//  Trip.swift
//  PostTrip
//
//  Created by Pavol Polacek on 17.09.16.
//  Copyright © 2016 Pavol Polacek. All rights reserved.
//

import Foundation
import UIKit

class Trip {
    
    var description: String = ""
    var name: String = ""
    var from = Date()
    var to = Date()
    var passangers: Int = 0
    var totalExpenses: Double = 0.0
    var rate: Double = 0.0
    var homePicture = UIImage()
    var countries: [UIImage] = [UIImage(named: "CZ")!]
    //var countries = UIImage()
}

func convertString2Date(dateString: String) -> Date {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd.MM.yyyy"
    let newDate = formatter.date(from: dateString)
    return newDate!
}

func convertDate2String(dateValue: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd.MM.yyyy"
    let newDateString = formatter.string(from: dateValue)
    return newDateString
}

