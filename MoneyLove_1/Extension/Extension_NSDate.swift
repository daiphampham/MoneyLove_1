//
//  Extension_NSDate.swift
//  MoneyLove_1
//
//  Created by framgia on 7/20/16.
//  Copyright © 2016 vantientu. All rights reserved.
//

import Foundation

extension NSDate {
    
    convenience init(dateString: String) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM"
        let date = dateFormatter.dateFromString(dateString)
        self.init(timeInterval:0, sinceDate:date!)
    }
    
    class func getCurrentMonth() ->Int {
        return NSCalendar(identifier: NSCalendarIdentifierGregorian)!.component(.Month, fromDate: NSDate())
    }
    
    class func getCurrentYear() ->Int {
        return NSCalendar(identifier: NSCalendarIdentifierGregorian)!.component(.Year, fromDate: NSDate())
    }
    
    // Returns the amount of months from another date
    func months(from date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.Month, fromDate: date, toDate: self, options: []).month ?? 0
    }
}