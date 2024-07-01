//
//  SattingsVC.swift
//  Weather&Map_iOS_UIKIt
//
//  Created by Jogender Singh on 30/04/24.
//

import UIKit

class SattingsVC: UIViewController {
    // MARK: - IBOUTLETS
    @IBOutlet weak var tableview: UITableView!
    
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }
    
    // TODO: DEINIT
    deinit{
        print("SattingsVC has been REMOVED...!")
    }
    // MARK: - ACTIONS
}
