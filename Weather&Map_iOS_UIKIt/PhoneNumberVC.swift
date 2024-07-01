//
//  PhoneNumberVC.swift
//  Weather&Map_iOS_UIKIt
//
//  Created by Jogender Singh on 29/04/24.
//

import UIKit

class PhoneNumberVC: UIViewController {
    // MARK: - IBOUTLETS
    
    
    
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    // TODO: DEINIT
    deinit{
        print("PhoneNumberVC has been REMOVED...!")
    }
    
    // MARK: - ACTIONS
    
    @IBAction func btnSendOTP_Tapped(_ sender: UIButton) {
        let OTPVC = storyboard?.instantiateViewController(withIdentifier: "OtpVC")
        navigationController?.pushViewController(OTPVC!, animated: true)
        
    }
}
