//
//  TripTableViewCell.swift
//  PostTrip
//
//  Created by Pavol Polacek on 17.09.16.
//  Copyright © 2016 Pavol Polacek. All rights reserved.
//

import UIKit

class TripTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var tripNameLbl: UILabel!
    @IBOutlet weak var tripHomePictureImg: UIImageView!
    @IBOutlet weak var tripDateFromLbl: UILabel!
    @IBOutlet weak var tripDateToLbl: UILabel!
    @IBOutlet weak var tripRateView: CosmosView!
    @IBOutlet weak var tripCountry1: UIImageView!
    @IBOutlet weak var tripCountry2: UIImageView!
    @IBOutlet weak var tripCountry3: UIImageView!
    @IBOutlet weak var tripCountry4: UIImageView!
    @IBOutlet weak var tripCountry5: UIImageView!
    @IBOutlet weak var tripCountry6: UIImageView!
    @IBOutlet weak var tripCountry7: UIImageView!
    @IBOutlet weak var tripPassangersNrLbl: UILabel!
    @IBOutlet weak var tripTotalExpenseLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
