//
//  ViewController2ViewController.swift
//  Tablas
//
//  Created by Jose Pino on 19/8/17.
//  Copyright © 2017 Jose Pino. All rights reserved.
//

import UIKit

class ViewController2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        labelTitulo.text = nombrePdfRecibido!

        // Do any additional setup after loading the view.
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

    
    
    
    @IBOutlet weak var labelTitulo: UILabel!
    
    var nombrePdfRecibido: String?
    
}
