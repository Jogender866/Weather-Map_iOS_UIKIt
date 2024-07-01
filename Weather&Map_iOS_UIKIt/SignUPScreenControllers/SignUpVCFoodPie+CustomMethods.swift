//
//  SignUpVC+CustomMethods.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 21/03/24.
//

import Foundation
import UIKit
// MARK: - CREATING EXTENSION OF SIGNUP
extension SignUpVCFoodPie{
    internal func initialSetup(){
        self.addGradient(on: myUIView)
        
        self.iconView.layer.cornerRadius = 19.0
        self.yourNameTxtFld.layer.borderWidth = 0.5
        self.yourNameTxtFld.layer.cornerRadius = 25.0
        self.yourNameTxtFld.layer.borderColor = UIColor.white.cgColor
        self.iconImageyourName.layer.cornerRadius = 52/2
        
        
        self.emailAddressTxtFld.layer.borderWidth = 0.5
        self.emailAddressTxtFld.layer.cornerRadius = 25.0
        self.emailAddressTxtFld.layer.borderColor = UIColor.white.cgColor
        self.iconImageEmailAdress.layer.cornerRadius = 52/2
        
       
        self.passwordTxtFld.layer.borderWidth = 0.5
        self.passwordTxtFld.layer.cornerRadius = 25.0
        self.passwordTxtFld.layer.borderColor = UIColor.white.cgColor
        self.iconImagePassword.layer.cornerRadius = 52/2
        
        self.signUPButton.layer.cornerRadius = 25.0
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

        myUIView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
