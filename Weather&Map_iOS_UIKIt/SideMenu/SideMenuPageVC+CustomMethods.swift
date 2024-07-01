//
//  SideMenuPageVC+CustomMethods.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 31/03/24.
//

import Foundation
import UIKit
extension SideMenuPageVC{
    internal func initialSetup(){
        self.myProfilePic.layer.cornerRadius = self.myProfilePic.frame.height/2
        self.myProfilePic.layer.borderWidth = 2.0
        self.myProfilePic.layer.borderColor = UIColor.brown.cgColor
        
        self.closeSideMenuButton_Ref.layer.borderWidth = 0.5
        self.closeSideMenuButton_Ref.layer.borderColor = UIColor.brown.cgColor
        self.closeSideMenuButton_Ref.layer.cornerRadius = 20.0
    }
}
