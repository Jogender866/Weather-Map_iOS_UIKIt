//
//  LoginVC.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 19/03/24.
//

import UIKit
class LoginVCFoodPie: UIViewController {
    
    // MARK: - IBOUTLETS
    @IBOutlet weak var MyUIView: UIView!
    @IBOutlet weak var iconView: UIView!
    @IBOutlet weak var useNameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var userIconImage: UIImageView!
    @IBOutlet weak var passwordKeyIcon: UIImageView!
    
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }
    
    // TODO: DEINIT
    deinit{
        print("LoginVCFoodPie has been REMOVED...!")
    }
    
    // MARK: - ACTIONS
}
