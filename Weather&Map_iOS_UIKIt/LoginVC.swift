//
//  LoginVC.swift
//  Weather&Map_iOS_UIKIt
//
//  Created by Jogender Singh on 28/04/24.
//

import UIKit

class LoginVC: UIViewController {
    // MARK: - IBOUTLETS
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // TODO: DEINIT
    deinit{
        print("LoginVC has been REMOVED...!")
    }
    
    // MARK: - ACTIONS
    
    @IBAction func buttonGoToSignUpPage_Tapped(_ sender: UIButton) {
        
        let signUpPage = storyboard?.instantiateViewController(withIdentifier: "SignUp")
        navigationController?.pushViewController(signUpPage!, animated: true)
        
        
    }
}
