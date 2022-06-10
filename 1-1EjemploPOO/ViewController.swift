//
//  ViewController.swift
//  1-1EjemploPOO
//
//  Created by djdenielb on 10/06/22.
//

import UIKit

class ViewController: UIViewController {
    
//  MARK: ***************************** Variables Globales *************************************
    
    var variableGlobal: Int = 18
    
//  MARK: ***************************** Instancias *************************************
    /*
     Lo ponemos asi por que queremos que no inicie todavia hasta que lo
     mandemos a crear pero estamos usando la herencia, por que la clase
     mazda tiene los metodos y la clase mini solo tiene el de recargar
     */

    var objetoMazda: MazdaMini?

//  MARK: ***************************** Outlets *************************************
    @IBOutlet weak var labelTitulo: UILabel!
    let persona = ClaseMazda()
           override func loadView() {
            super.loadView()
               
               labelTitulo.text = "Fabrica Mazda"
               
        }
    
//  MARK: ***************************** Actions *************************************
    @IBAction func CrearObjeto(_ sender: UIButton) {
        variableGlobal = 10
        print("Vaiable Global \(variableGlobal)")
        print("Boton Crear objeto")
        
//        Creacion del objeto, aqui hacemos una instancia
        objetoMazda = MazdaMini()
//        Usamos el desempaquetado forzado por que estamos seguros de que se crea el objeto al presionar y tiene un valor
        print(objetoMazda!)
    }
    @IBAction func btnPropiedades(_ sender: UIButton) {
        print("Boton Propiedades")
//        Si el objeto no existe entonces usamos el ?? para dar un valor por defecto
        print("El Mazda es de tamaño \(objetoMazda?.tamaño ?? ""), tiene \(objetoMazda?.numeroDePuertas ?? 0) es de color \(objetoMazda?.color ?? "") y te va a costar \(objetoMazda?.precio ?? "") y tiene \(objetoMazda?.carga ?? 0) de carga")
    }
    @IBAction func btnEncender(_ sender: UIButton) {
        print("Boton Encender")
//        llamamos a la funcion encender el objeto mazda
        objetoMazda?.encender()
    }
    @IBAction func btnAcelerar(_ sender: UIButton) {
        print("Boton Acelerar")
//        llamamos a la funcion acelerar del objeto mazda
        objetoMazda?.acelerar()
    }
    @IBAction func btnRecargar(_ sender: UIButton) {
        print("Boton Recargar")
//        Llamamos a la funcion del recargar de la clase mazda mini
        objetoMazda?.recargar()
    }
    
}
