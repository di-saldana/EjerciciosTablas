//
//  MiDataSource.swift
//  EjerciciosTablas
//
//  Created by Dianelys Saldaña on 10/27/23.
//

import UIKit


class MiDataSource : NSObject, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "miCelda", for: indexPath)
        celda.textLabel?.text = String(indexPath.row)
        return celda
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle==UITableViewCell.EditingStyle.delete {
                // self.datos.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
                
            }
            else if editingStyle==UITableViewCell.EditingStyle.insert {
                // self.datos.insert("Nueva celda", at: indexPath.row)
                tableView.insertRows(at: [indexPath], with: UITableView.RowAnimation.bottom)
            }
        }
    
    
}
