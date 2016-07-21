//
//  DataPageView.swift
//  MoneyLove_1
//
//  Created by framgia on 7/11/16.
//  Copyright © 2016 vantientu. All rights reserved.
//

import UIKit

class DataPageView: NSObject {
    static var numberPage = 0
    static func getMonthPage(monthsToAdd: Int, toDate: NSDate) -> String {
        let calculatedDate = NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Month, value: monthsToAdd, toDate: toDate, options: NSCalendarOptions.init(rawValue: 0))
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM/yyyy"
        return dateFormatter.stringFromDate(calculatedDate!)
    }
}
