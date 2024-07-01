//
//  WeatherDetailsScreenVC.swift
//  Weather&Map_iOS_UIKIt
//
//  Created by Jogender Singh on 29/04/24.
//

import UIKit
class WeatherDetailsScreenVC: UIViewController {

    // MARK: - IBOUTLETS
    @IBOutlet weak var lblCountryName: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblLatitude: UILabel!
    @IBOutlet weak var lblLongitude: UILabel!
    @IBOutlet weak var lblTZ_ID: UILabel!
    @IBOutlet weak var lblLocalTime: UILabel!
    @IBOutlet weak var lblTemp_C: UILabel!
    @IBOutlet weak var lblTemp_F: UILabel!
    @IBOutlet weak var lblIsDay: UILabel!
    @IBOutlet weak var lblCloud: UILabel!
    @IBOutlet weak var lblVisible_KM: UILabel!
    @IBOutlet weak var lblUV: UILabel!
    
    // MARK: - PROPERTIES
    var weatherDetails:WeatherResponse?
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }
    
    // TODO: DEINIT
    deinit{
        print("WeatherDetailsScreenVC has been REMOVED...!")
    }
    
    // MARK: - ACTIONS
    @IBAction func ButtonRefreshUpdate_Tapped(_ sender: UIButton) {
        self.fetchDataViaNSURLSession()
    }
}
