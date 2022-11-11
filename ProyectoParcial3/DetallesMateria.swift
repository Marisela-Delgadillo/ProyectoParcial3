//
//  DetallesMateria.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 08/11/22.
//

import UIKit

class DetallesMateria : UIViewController {
    
    var materia : Materia?
    var checked = false
    
    var callBackActualizarAsistencia : ((Materia) -> Void)?
    
    @IBOutlet weak var imgPortada: UIImageView!
    @IBOutlet weak var lblMateria: UILabel!
    
    @IBOutlet weak var lblHorario: UILabel!
    
    @IBOutlet weak var lblFaltas: UILabel!
    
    @IBOutlet weak var imgCheck: UIImageView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            if materia != nil{
                self.title = materia!.materia
                imgPortada.image = UIImage(named: materia!.imagen)
                lblMateria.text = materia!.materia
                lblHorario.text = materia!.horario
                lblFaltas.text = materia!.faltas

                    imgCheck.image = UIImage(named: materia!.check)

                
                
                
                //lblMatricula.text = alumno?.matricula
                //lblEdad.text = "\(alumno!.edad)"
                //lblCarrera.text = alumno!.carrera
            } else{
                self.title = "Materia"
            }
        }
    
    @IBAction func doTapCheck(_ sender: Any) {
        //if callBackActualizar != nil 
        //checked = !checked
        //imgCheck.image = UIImage(named: "check1")
        if (materia?.check == "check2")
        {
            materia?.check = "check1"
            callBackActualizarAsistencia!(materia!)
        }
        
        
    }
}
