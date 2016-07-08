//
//  TrendTableViewController.swift
//  MoneyLove_1
//
//  Created by framgia on 7/7/16.
//  Copyright © 2016 vantientu. All rights reserved.
//

//let HEIGHT_ACTION_CELL = 250
//let HEIGHT_CHART_CELL = 320
//let HEIGHT_TREND_CELL = 100


import UIKit

class TrendTableViewController: UITableViewController {
    
    let arrMonths = ["January","February","March","April","May","June","July","August","September","October","November","December"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func registerCell() {
        self.tableView.registerClass(ActionTableViewCell.classForCoder(), forCellReuseIdentifier: "ActionTableViewCell")
        self.tableView.registerNib(UINib.init(nibName: "ActionTableViewCell", bundle: nil), forCellReuseIdentifier: "ActionTableViewCell")
        self.tableView.registerClass(BarChartTableViewCell.classForCoder(), forCellReuseIdentifier: "BarChartTableViewCell")
        self.tableView.registerNib(UINib.init(nibName: "BarChartTableViewCell", bundle: nil), forCellReuseIdentifier: "BarChartTableViewCell")
        self.tableView.registerClass(TrendTableViewCell.classForCoder(), forCellReuseIdentifier: "TrendTableViewCell")
        self.tableView.registerNib(UINib.init(nibName: "TrendTableViewCell", bundle: nil), forCellReuseIdentifier: "TrendTableViewCell")
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 1
        }
        return 13
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let actionCell = tableView.dequeueReusableCellWithIdentifier("ActionTableViewCell", forIndexPath: indexPath) as! ActionTableViewCell
            return actionCell
        } else {
            if indexPath.row == 0 {
                let barChartCell = tableView.dequeueReusableCellWithIdentifier("BarChartTableViewCell", forIndexPath: indexPath) as! BarChartTableViewCell
                barChartCell.setupDataChart()
                return barChartCell
            } else {
                let trendCell = tableView.dequeueReusableCellWithIdentifier("TrendTableViewCell", forIndexPath: indexPath) as! TrendTableViewCell
                trendCell.setDataTrendCell(arrMonths[indexPath.row - 1], money: 0)
                return trendCell
            }
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 220;
        } else {
            if indexPath.row == 0 {
                return 320
            }
            return 60
        }
    }
    
}
