//
//  ViewController.swift
//  EjerciciosTablas
//
//  Created by Dianelys Saldaña on 10/27/23.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var campoTexto: UITextField!
    @IBOutlet weak var botonInsertar: UIButton!
    
    let miDS = DSTabla()
    let miDelegate = DelegateTabla()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.table.dataSource = miDS
        self.table.delegate = miDelegate
//        self.table.setEditing(true, animated:true);
    }
    
    
    @IBAction func insertarTexto(_ sender: UIButton) {
        if let texto = campoTexto.text, !texto.isEmpty {
            miDS.insertItem(texto)
            table.reloadData()
            campoTexto.text = ""
        }
    }
    
}


