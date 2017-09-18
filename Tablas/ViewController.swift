//
//  ViewController.swift
//  Tablas
//
//  Created by Jose Pino on 19/8/17.
//  Copyright © 2017 Jose Pino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

   
    @IBOutlet var tabla: UITableView!
    
    
    var contenidoCeldas = ["pdf1", "pdf2", "pdf3"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabla.dataSource = self
        tabla.delegate = self
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        
        let celda = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: "Cell")
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        
        return celda
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print("Estoy pulsando la fila \(indexPath.row)")
        let idPdfSeleccionado = indexPath.row
        self.performSegue(withIdentifier: "pantallaDosSegue", sender: idPdfSeleccionado)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pantallaDosSegue" {
                let idPdfSeleccionadoRecibido = sender as! Int
                let objPantalla2: ViewController2ViewController = segue.destination as! ViewController2ViewController
            
            objPantalla2.nombrePdfRecibido = contenidoCeldas[idPdfSeleccionadoRecibido]
            
        }
    }
    
}

