//
//  SideMenuPageVC.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 31/03/24.
//

import UIKit

class SideMenuPageVC: UIViewController {
    // MARK: - IBOUTLETS
    @IBOutlet weak var myProfilePic: UIImageView!
    @IBOutlet weak var homeBtnView: UIView!
    @IBOutlet weak var closeSideMenuButton_Ref: UIButton!

    
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }
    
    // TODO: DEINIT
    deinit{
        print("SideMenuPageVC has been REMOVED...!")
    }
    
    
    // MARK: - ACTIONS
    @IBAction func closeSideMenuButton_Tapped(_ sender: UIButton) {
//        // Check if the presenting view controller exists
//        if let presentingViewController = presentingViewController {
//            // Dismiss the side menu controller by the presenting view controller
//            presentingViewController.dismiss(animated: true, completion: nil)
//        }
    }

}
