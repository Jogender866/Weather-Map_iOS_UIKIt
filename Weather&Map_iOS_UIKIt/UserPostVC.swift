//
//  UserPostVC.swift
//  Weather&Map_iOS_UIKIt
//
//  Created by Jogender Singh on 30/05/24.
//

import UIKit
class UserPostVC: UIViewController {
    
// MARK: - IBOUTLETS
@IBOutlet weak var titleLabel: UILabel!
@IBOutlet weak var bodyLabel: UILabel!
@IBOutlet weak var tagsLabel: UILabel!
@IBOutlet weak var likesLabel: UILabel!
@IBOutlet weak var dislikesLabel: UILabel!
@IBOutlet weak var viewsLabel: UILabel!
@IBOutlet weak var userIdLabel: UILabel!
    
// MARK: - PROPERTIES
var myDetails:Post?
    
// MARK: - VIEW LIFE CYCLE METHODS
// TODO: viewDidLoad
override func viewDidLoad() {
super.viewDidLoad()
    self.initialSetup()
    }
}
