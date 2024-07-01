//
//  HomePageVC.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 31/03/24.
//

import UIKit

class HomePageVC: UIViewController {
    // MARK: - IBOUTLETS
    @IBOutlet weak var sideMenuButton_Ref: UIButton!
    
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }
    
    // TODO: DEINIT
    deinit{
        print("HomePageVC has been REMOVED...!")
    }
    
    // MARK: - ACTIONS
    
    @IBAction func sideMenuButton_Tapped(_ sender: UIButton) {
        // Instantiate the side menu controller
        let sideMenuVC = UIStoryboard(name: "Auth", bundle: nil).instantiateViewController(withIdentifier: "SideMenuPageVC") as! SideMenuPageVC
        
        // Calculate the width of one-third of the screen
        let screenWidth = UIScreen.main.bounds.width
        let sideMenuWidth = screenWidth / 1.4
        
        // Set the initial position of the side menu controller off-screen to the left
        sideMenuVC.view.frame = CGRect(x: -sideMenuWidth, y: 0, width: sideMenuWidth, height: UIScreen.main.bounds.height)
        
        // Add the side menu controller's view to the current view controller's view
        addChild(sideMenuVC)
        view.addSubview(sideMenuVC.view)
        sideMenuVC.didMove(toParent: self)
        
        // Animate the side menu controller sliding in from left to right
        UIView.animate(withDuration: 0.3) {
            sideMenuVC.view.frame = CGRect(x: 0, y: 0, width: sideMenuWidth, height: UIScreen.main.bounds.height)
        }
    }
}
