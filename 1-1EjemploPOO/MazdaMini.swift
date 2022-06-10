//
//  MazdaMini.swift
//  1-1EjemploPOO
//
//  Created by djdenielb on 10/06/22.
//

import Foundation

class MazdaMini: ClaseMazda{
    
    var carga: Int = 50
    
    func recargar(){
        carga = 100
        print("El automovil se ha recargado y tiene \(carga) de carga")
    }
    
    
}
