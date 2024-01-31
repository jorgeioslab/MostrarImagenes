//
//  ViewController.swift
//  QueImagenes
//
//  Created by Jorge on 23/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    let listaElemntos = ["Albania","Armenia","Barbados","Congo","Georgia","Honduras","Islandia","Libano","Mexico","Philipinas"]
//    let listaElemntos = ["Monalisa", "venus", "perla"]
    
    var elementosIndice = 0
    
    @IBOutlet weak var imagen: UIImageView!
    
    
    @IBOutlet weak var etiqueta: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actualizaElemento()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func mostrar(_ sender: Any) {
        etiqueta.text = listaElemntos[elementosIndice]
    }
    
    
    @IBAction func siguiente(_ sender: Any) {
        elementosIndice += 1
        if (elementosIndice >= listaElemntos.count){
            elementosIndice = 0
        }
        actualizaElemento()
    }
    
    func actualizaElemento (){
        
        etiqueta.text = "?"
        
        let nombreDelElemento = listaElemntos[elementosIndice]
        
        let laImagen = UIImage(named: nombreDelElemento)
        
        imagen.image = laImagen
    }
    
}

