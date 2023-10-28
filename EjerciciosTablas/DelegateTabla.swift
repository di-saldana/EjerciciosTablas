//
//  MiDelegate.swift
//  EjerciciosTablas
//
//  Created by Dianelys Saldaña on 10/27/23.
//

import Foundation
import UIKit

class DelegateTabla: NSObject, UITableViewDelegate {
    //definición de la clase
    
    var currentTextColor: UIColor = .black
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let celda = tableView.cellForRow(at: indexPath) {
            if currentTextColor == .black {
                celda.textLabel?.textColor = .red
                currentTextColor = .red
            } else {
                celda.textLabel?.textColor = .black
                currentTextColor = .black
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
