//
//  ActionTableViewCell.swift
//  MoneyLove_1
//
//  Created by framgia on 7/7/16.
//  Copyright © 2016 vantientu. All rights reserved.
//

import UIKit

enum SegmentGroupBy: Int {
    case EXPENSE, INCOME, NETINCOME
    static let arrGroup = [EXPENSE, INCOME, NETINCOME]
    
    func title() {
        switch self {
        case EXPENSE:
            print("expens")
        case INCOME:
            print("income")
        case NETINCOME:
            print("net income")
        }

    }
}

class ActionTableViewCell: UITableViewCell {
    
    var actionHandler: ((nameAction: String) -> Void)!
    @IBOutlet weak var btnDateFrom: UIButton!
    @IBOutlet weak var btnDateTo: UIButton!
    @IBOutlet weak var segmentGroupType: UISegmentedControl!
    @IBOutlet weak var segmentGroupBy: UISegmentedControl!
    let arrTitles = SegmentGroupBy.arrGroup
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func dateFromAction(sender: AnyObject) {
        actionHandler(nameAction: "From")
    }
    
    @IBAction func dateToAction(sender: AnyObject) {
        actionHandler(nameAction: "To")
    }
    
    @IBAction func segmentGroupTypeAction(sender: AnyObject) {
        let segmentIndex = arrTitles[segmentGroupBy.selectedSegmentIndex]
        segmentIndex.title()
    }
    
    @IBAction func segmentGroupByAction(sender: AnyObject) {
        
    }
}
