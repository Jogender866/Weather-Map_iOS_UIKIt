//
//  SattingsVC+TableView.swift
//  Weather&Map_iOS_UIKIt
//
//  Created by Jogender Singh on 30/04/24.
//

import Foundation
import UIKit

extension SattingsVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               if indexPath.row == 0 {
                   let cell = tableview.dequeueReusableCell(withIdentifier: "SattingsTableViewCell", for: indexPath) as! SattingsTableViewCell
                   return cell
               } 
        else if indexPath.row == 1 {
                   let cell2 = tableview.dequeueReusableCell(withIdentifier: "TableViewCell2", for: indexPath) as! TableViewCell2
                   return cell2
               } else {
                   return UITableViewCell()
               }
           }
    }


