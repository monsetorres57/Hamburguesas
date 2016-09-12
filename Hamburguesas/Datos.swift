//
//  Datos.swift
//  Hamburguesas
//
//  Created by Monse on 12/09/16.
//  Copyright © 2016 Monse. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises{
    var Paises = [ "México","USA","Guatemala","Belice","Colombia","Uruguay","Argentina","Brasil","Venezuela","Puerto Rico","Republica Dominicana","Cuba","Chile","España","Francia","Alemania","Belgica","Italia","India","China"]
    
    var numPaises :Int = 0
    init(){
        numPaises =  Paises.count
    }
    func obtenPais() -> String {
        let nPais = Int(arc4random() % UInt32(numPaises))
        let sPais = Paises[nPais]
        return sPais
    }
}

class ColeccionDeHamburguesa {
    var Hamburguesas = ["Española", "Argentina", "Ternera","Raza Nostra","Deportista", "De Pueblo","Barbacoa","Bacon",
                        "Madrid","Parmigiano","Ranchera","Iberica","A la Antigua","Roquefort","Cebolla Pochada","Americana","Del Chef","4 Quesos","Trufa","Setas"]
    var numHam : Int = 0
    init(){
        numHam =  Hamburguesas.count
    }
    func obtenHamburguesa() -> String {
        let nHam = Int(arc4random() % UInt32(numHam))
        let sHamburguesa = Hamburguesas[nHam]
        return sHamburguesa
    }

}

struct Colores {
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                    
                    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    func regresaColorAleatorio()->UIColor{
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
    
}