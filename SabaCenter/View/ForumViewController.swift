//
//  ForumViewController.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/10/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import UIKit

class ForumViewController: UIViewController {
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var questionsTableView: UITableView!

    @IBAction func searchTextFieldEditingChanged(_ sender: UITextField) {
        print(sender.text!)
    }

}
