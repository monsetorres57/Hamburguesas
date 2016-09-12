//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Monse on 12/09/16.
//  Copyright © 2016 Monse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var Paises = ColeccionDePaises()
    var Hamburguesas = ColeccionDeHamburguesa()
    var Colors = Colores()

    @IBOutlet weak var Precio: UILabel!
    
    @IBOutlet weak var Pais: UILabel!
    
    @IBOutlet weak var Hamburg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Pais.text = " "
        Hamburg.text = " "
        Precio.text = " "
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambioPaisHamburguesa(sender: AnyObject) {
        Pais.text = Paises.obtenPais()
        Hamburg.text = Hamburguesas.obtenHamburguesa()
        let colAlea = Colors.regresaColorAleatorio()
        Precio.text = String (Double(arc4random()) % 1000 * 0.10)
        view.backgroundColor = colAlea
        view.tintColor = colAlea
        
        
    }

}

