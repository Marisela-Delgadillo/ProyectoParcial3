//
//  ViewController.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 04/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //var checked = false
    
    
    
    var materias : [Materia] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 69
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria") as! CeldaMateriaController
                    celda.lblMateria.text = materias[indexPath.row].materia
                    celda.lblHorario.text = materias[indexPath.row].horario
                    celda.lblFaltas.text = materias[indexPath.row].faltas
                    celda.imgCheck.image = UIImage(named: materias[indexPath.row].check)
        
                return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        materias.append(Materia(materia:"Progamación", horario: "7:00 am - 9:00 am", faltas: "3", check: "check1"))
        materias.append(Materia(materia:"Animación", horario: "9:00 am - 11:00 am", faltas: "1", check: "check1"))
        materias.append(Materia(materia:"Diosito", horario: "11:00 am - 12:00 pm", faltas: "0", check: "check1"))
        
        
    }


}

