//
//  DSTabla.swift
//  EjerciciosTablas
//
//  Created by Dianelys Saldaña on 10/27/23.
//

import Foundation
import UIKit

class DSTabla : NSObject, UITableViewDataSource {
    var lista = ["Daenerys Targaryen", "Jon Nieve", "Cersei Lannister", "Eddard Stark"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "miCelda", for: indexPath)
        celda.textLabel?.text = lista[indexPath.row]
        return celda
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle==UITableViewCell.EditingStyle.delete {
                self.lista.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            }
    }
    
    func insertItem(_ item: String) {
        lista.append(item)
    }
    
}
