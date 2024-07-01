//
//  LoginVC+CustomMethods+Extensions.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 19/03/24.
//

import Foundation
import UIKit

// MARK: - CREATING EXTENSION OF LOGINVC
extension LoginVCFoodPie{
    internal func initialSetup(){
        self.addGradient(on: MyUIView)
        
        self.iconView.layer.cornerRadius = 40.0
        
        self.useNameTxtField.layer.borderWidth = 0.5
        self.useNameTxtField.layer.borderColor = UIColor.white.cgColor
        self.useNameTxtField.layer.cornerRadius = 25.0
        
        self.passwordTxtField.layer.borderWidth = 0.5
        self.passwordTxtField.layer.borderColor = UIColor.white.cgColor
        self.passwordTxtField.layer.cornerRadius = 25.0
        
        self.loginButton.layer.cornerRadius = 25.0
        self.userIconImage.layer.cornerRadius = 52/2
        self.passwordKeyIcon.layer.cornerRadius = 52/2
        
    }
    
    // TODO: ADD GRADIENT ON
    internal func addGradient(on view:UIView){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        
        let topColor = #colorLiteral(red: 1, green: 0.5409830213, blue: 0.468693912, alpha: 1).cgColor
        let bottomColor = #colorLiteral(red: 0.9994319081, green: 0.255146116, blue: 0.439003855, alpha: 1).cgColor
        gradientLayer.colors = [topColor, bottomColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)

        MyUIView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
