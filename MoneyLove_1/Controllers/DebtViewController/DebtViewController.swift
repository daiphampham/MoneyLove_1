//
//  DebtViewController.swift
//  MoneyLove_1
//
//  Created by framgia on 7/7/16.
//  Copyright © 2016 vantientu. All rights reserved.
//

import UIKit
import TabPageViewController

class DebtViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabPageVC = TabPageViewController.create()
        let viewController1 = UIViewController()
        viewController1.view.backgroundColor = UIColor.whiteColor()
        let viewController2 = PayReceiavableTableViewController(nibName: "PayReceiavableTableViewController", bundle: nil)
        tabPageVC.tabItems = [(viewController1, "Payable"), (viewController2, "Receivable")]
        var option = TabPageOption()
        option.tabWidth = UIScreen.mainScreen().bounds.size.width / CGFloat(tabPageVC.tabItems.count)
        option.currentColor = UIColor.whiteColor()
        option.tabBackgroundColor = UIColor.greenColor()
        tabPageVC.option = option
        tabPageVC.title = "DEBTS"
        self.navigationController?.pushViewController(tabPageVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
