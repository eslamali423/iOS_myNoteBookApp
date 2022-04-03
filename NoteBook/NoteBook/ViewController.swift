//
//  ViewController.swift
//  NoteBook
//
//  Created by Eslam Ali  on 03/04/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var noNotesLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self

    }


}

