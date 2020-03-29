//
//  DailyTableViewCell.swift
//  Weather Gift
//
//  Created by Ben Tsai on 3/29/20.
//  Copyright © 2020 Ben Tsai. All rights reserved.
//

import UIKit

class DailyTableViewCell: UITableViewCell {
    @IBOutlet weak var dailyImageView: UIImageView!
    @IBOutlet weak var dailyWeekdayLabel: UILabel!
    @IBOutlet weak var dailySummaryView: UITextView!
    @IBOutlet weak var dailyHighLabel: UILabel!
    @IBOutlet weak var dailyLowLabel: UILabel!
    
    var dailyWeather: DailyWeather!{
        didSet{
            dailyImageView.image = UIImage(named: dailyWeather.dailyIcon)
            dailyWeekdayLabel.text = dailyWeather.dailyWeekday
            dailySummaryView.text = dailyWeather.dailySummary
            dailyHighLabel.text = "\(dailyWeather.dailyHigh)°"
            dailyLowLabel.text = "\(dailyWeather.dailyLow)°"
        }
    }
}
