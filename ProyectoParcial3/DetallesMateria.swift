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
    var evaluacion = 0
    
    var callBackActualizarAsistencia : ((Materia) -> Void)?
    
    @IBOutlet weak var imgPortada: UIImageView!
    @IBOutlet weak var lblMateria: UILabel!
    
    @IBOutlet weak var lblMaestro: UILabel!
    
    @IBOutlet weak var lblHorario: UILabel!
    
    @IBOutlet weak var lblFaltas: UILabel!
    
    @IBOutlet weak var imgCheck: UIImageView!
    
    @IBOutlet weak var imgRate1: UIImageView!
    
    @IBOutlet weak var imgRate2: UIImageView!
    
    @IBOutlet weak var imgRate3: UIImageView!
    
    @IBOutlet weak var imgRate4: UIImageView!
    
    @IBOutlet weak var imgRate5: UIImageView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            if materia != nil{
                self.title = ""
                imgPortada.image = UIImage(named: materia!.imagen)
                
                lblMateria.text = materia!.materia
                lblMaestro.text = materia!.maestro
                lblHorario.text = materia!.horario
                lblFaltas.text = materia!.faltas
                imgCheck.image = UIImage(named: materia!.check)
                checked = materia!.asistencia
                if checked {
                    imgCheck.image = UIImage(named: "check1")
                } else {
                    imgCheck.image = UIImage(named: "check2")
                }
                imgRate1.image = UIImage(named: materia!.rate1)
                imgRate2.image = UIImage(named: materia!.rate2)
                imgRate3.image = UIImage(named: materia!.rate3)
                imgRate4.image = UIImage(named: materia!.rate4)
                imgRate5.image = UIImage(named: materia!.rate5)
                evaluacion = materia!.evaluacion
                if evaluacion == 0 {
                    imgRate1.image = UIImage(named: "enojado2")
                    imgRate2.image = UIImage(named: "triste2")
                    imgRate3.image = UIImage(named: "maso2")
                    imgRate4.image = UIImage(named: "feli2")
                    imgRate5.image = UIImage(named: "feliz2")
                } else if evaluacion == 1 {
                    imgRate1.image = UIImage(named: "enojado")
                    imgRate2.image = UIImage(named: "triste2")
                    imgRate3.image = UIImage(named: "maso2")
                    imgRate4.image = UIImage(named: "feli2")
                    imgRate5.image = UIImage(named: "feliz2")
                } else if evaluacion == 2 {
                    imgRate1.image = UIImage(named: "enojado2")
                    imgRate2.image = UIImage(named: "triste")
                    imgRate3.image = UIImage(named: "maso2")
                    imgRate4.image = UIImage(named: "feli2")
                    imgRate5.image = UIImage(named: "feliz2")
                } else if evaluacion == 3 {
                    imgRate1.image = UIImage(named: "enojado2")
                    imgRate2.image = UIImage(named: "triste2")
                    imgRate3.image = UIImage(named: "maso")
                    imgRate4.image = UIImage(named: "feli2")
                    imgRate5.image = UIImage(named: "feliz2")
                } else if evaluacion == 4 {
                    imgRate1.image = UIImage(named: "enojado2")
                    imgRate2.image = UIImage(named: "triste2")
                    imgRate3.image = UIImage(named: "maso2")
                    imgRate4.image = UIImage(named: "feli")
                    imgRate5.image = UIImage(named: "feliz2")
                } else if evaluacion == 5 {
                    imgRate1.image = UIImage(named: "enojado2")
                    imgRate2.image = UIImage(named: "triste2")
                    imgRate3.image = UIImage(named: "maso2")
                    imgRate4.image = UIImage(named: "feli2")
                    imgRate5.image = UIImage(named: "feliz")
                }
                
                
                

                //lblMatricula.text = alumno?.matricula
                //lblEdad.text = "\(alumno!.edad)"
                //lblCarrera.text = alumno!.carrera
            } else{
                self.title = "Materia"
            }
        }
    
    @IBAction func doTapCheck(_ sender: Any) {
        checked = true
        materia?.asistencia = checked
        imgCheck.image = UIImage(named: "check1")
    }
    
    @IBAction func doTapRate1(_ sender: Any) {
        evaluacion = 1
        materia?.evaluacion = 1
        imgRate1.image = UIImage(named: "enojado")
        imgRate2.image = UIImage(named: "triste2")
        imgRate3.image = UIImage(named: "maso2")
        imgRate4.image = UIImage(named: "feli2")
        imgRate5.image = UIImage(named: "feliz2")
    }
    
    @IBAction func doTapRate2(_ sender: Any) {
        evaluacion = 2
        materia?.evaluacion = 2
        imgRate1.image = UIImage(named: "enojado2")
        imgRate2.image = UIImage(named: "triste")
        imgRate3.image = UIImage(named: "maso2")
        imgRate4.image = UIImage(named: "feli2")
        imgRate5.image = UIImage(named: "feliz2")
    }
    
    @IBAction func doTapRate3(_ sender: Any) {
        evaluacion = 3
        materia?.evaluacion = 3
        imgRate1.image = UIImage(named: "enojado2")
        imgRate2.image = UIImage(named: "triste2")
        imgRate3.image = UIImage(named: "maso")
        imgRate4.image = UIImage(named: "feli2")
        imgRate5.image = UIImage(named: "feliz2")
    }
    
    @IBAction func doTapRate4(_ sender: Any) {
        evaluacion = 4
        materia?.evaluacion = 4
        imgRate1.image = UIImage(named: "enojado2")
        imgRate2.image = UIImage(named: "triste2")
        imgRate3.image = UIImage(named: "maso2")
        imgRate4.image = UIImage(named: "feli")
        imgRate5.image = UIImage(named: "feliz2")
    }
    
    @IBAction func doTapRate5(_ sender: Any) {
        evaluacion = 5
        materia?.evaluacion = 5
        imgRate1.image = UIImage(named: "enojado2")
        imgRate2.image = UIImage(named: "triste2")
        imgRate3.image = UIImage(named: "maso2")
        imgRate4.image = UIImage(named: "feli2")
        imgRate5.image = UIImage(named: "feliz")
    }
}
