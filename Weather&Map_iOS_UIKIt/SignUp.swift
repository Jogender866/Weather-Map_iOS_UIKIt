//
//  SignUp.swift
//  Weather&Map_iOS_UIKIt
//
//  Created by Jogender Singh on 29/04/24.
//

import UIKit

class SignUp: UIViewController {
    // MARK: - IBOUTLETS
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // TODO: DEINIT
    deinit{
        print("SignUp has been REMOVED...!")
    }
    
    // MARK: - ACTIONS
    @IBAction func btnBackToSignIn_Tapped(_ sender: UIButton) {
       // let signInVC = //storyboard?.instantiateViewController(withIdentifier: "SignIn")
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func btnGoToPhoneNumberVC_Tapped(_ sender: UIButton) {
        let phoneNVC = storyboard?.instantiateViewController(withIdentifier: "PhoneNumberVC")
        navigationController?.pushViewController(phoneNVC!, animated: true)
    }
    
}
