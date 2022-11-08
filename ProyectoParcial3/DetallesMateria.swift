//
//  DetallesMateria.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 08/11/22.
//

import UIKit

class DetallesMateria : UIViewController {
    
    var materia : Materia?
    
    @IBOutlet weak var imgPortada: UIImageView!
    @IBOutlet weak var lblMateria: UILabel!
    
    @IBOutlet weak var lblHorario: UILabel!
    
    @IBOutlet weak var lblFaltas: UILabel!
    
    @IBOutlet weak var imgCheck: UIImageView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            if materia != nil{
                
                imgPortada.image = UIImage(named: materia!.portada)
                
                //lblMatricula.text = alumno?.matricula
                //lblEdad.text = "\(alumno!.edad)"
                //lblCarrera.text = alumno!.carrera
            } else{
                self.title = "Artista"
            }
        }
}
