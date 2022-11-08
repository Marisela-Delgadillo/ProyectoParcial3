//
//  ComidaController.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 08/11/22.
//

import UIKit

class ComidaController :  UIViewController, UITableViewDelegate, UITableViewDataSource {
    var comidas: [Comida] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comidas.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaComida") as! CeldaComidaController
                    celda.lblComida.text = comidas[indexPath.row].comida
                    celda.lblPrecio.text = comidas[indexPath.row].precio
                    celda.imgImagen.image = UIImage(named: comidas[indexPath.row].imagen)
        
                return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        comidas.append(Comida( imagen: "fotito", comida: "Tacos", precio: "$15"))
        comidas.append(Comida( imagen: "fotito", comida: "Mollete", precio: "$17"))
        comidas.append(Comida( imagen: "fotito", comida: "Sandwich", precio: "$23"))
        comidas.append(Comida( imagen: "fotito", comida: "Torta", precio: "$23"))
        comidas.append(Comida( imagen: "fotito", comida: "Burritos", precio: "$23"))
        comidas.append(Comida( imagen: "fotito", comida: "Lucas", precio: "$6"))
        comidas.append(Comida( imagen: "fotito", comida: "Sabritas", precio: "$17"))
        comidas.append(Comida( imagen: "fotito", comida: "Pañalito", precio: "$11"))
        comidas.append(Comida( imagen: "fotito", comida: "Nachos", precio: "$30"))
        comidas.append(Comida( imagen: "fotito", comida: "Quesadillas", precio: "$20"))
        
        
    }
    
}
