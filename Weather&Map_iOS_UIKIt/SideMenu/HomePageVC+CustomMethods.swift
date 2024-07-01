//
//  HomePageVC+CustomMethods.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 31/03/24.
//

import Foundation
import UIKit

extension HomePageVC{
    internal func initialSetup(){
        self.sideMenuButton_Ref.layer.borderWidth = 2.0
        self.sideMenuButton_Ref.layer.borderColor = UIColor.yellow.cgColor
        self.sideMenuButton_Ref.layer.cornerRadius = 20.0
    }
}
