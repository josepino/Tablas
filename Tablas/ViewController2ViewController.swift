//
//  ViewController2ViewController.swift
//  Tablas
//
//  Created by Jose Pino on 19/8/17.
//  Copyright © 2017 Jose Pino. All rights reserved.
//

import UIKit

class ViewController2ViewController: UIViewController {
    
    
    @IBOutlet var vistaWeb: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        habilitarZoom()
        mostrarPdf()
        
    }
    
    
    func habilitarZoom(){
        vistaWeb.scalesPageToFit = true
        
    }
    
    
    func mostrarPdf () {
        //1: Direccion del archivo pdf
        let direccionPdf = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePdfRecibido!, ofType: "pdf", inDirectory:"PDF")!)
        
        //2: Transformar archivo pdf a data Una vez que tenemos el archivo pdf hay que hacer una transformacion
        let datosPdf = try? Data(contentsOf: direccionPdf)
        
        
        
        //3: Mostrar datos en la vista web
        
        vistaWeb.load(datosPdf!, mimeType: "application/pdf", textEncodingName: "uf-8", baseURL: direccionPdf)
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    
    
    
    var nombrePdfRecibido: String?
    
}
