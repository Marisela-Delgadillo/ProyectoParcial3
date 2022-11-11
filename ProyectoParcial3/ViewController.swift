//
//  ViewController.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 04/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvMateria: UITableView!
    
    //var checked = false
    
    @IBOutlet weak var txtNombreAlumno: UILabel!
    
    @IBOutlet weak var lblMatricula: UILabel!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblParentesco: UILabel!
    @IBOutlet weak var lblTel1: UILabel!
    @IBOutlet weak var lblTel2: UILabel!
    
    @IBOutlet weak var imgFoto: UIImageView!
    var materias : [Materia] = []
    var alumno : Alumno? = Alumno(nombre: "Marisela Delgadillo",foto:"fotito", matricula: "199419", nombreContacto: "Victor Delgadillo", parentesco: "Papá", tel1: "6441012512", tel2: "6441278477")
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 91
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria") as! CeldaMateriaController
                    celda.lblMateria.text = materias[indexPath.row].materia
                    celda.lblHorario.text = materias[indexPath.row].horario
                    celda.imgImagen.image = UIImage(named: materias[indexPath.row].imagen)
        
        
                return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtNombreAlumno.text = alumno?.nombre
                imgFoto.layer.cornerRadius = 20
                imgFoto.image = UIImage(named: alumno!.foto)
                lblMatricula.text = alumno?.matricula
                lblNombre.text = alumno?.nombreContacto
                lblParentesco.text = alumno?.parentesco
                lblTel1.text = alumno?.tel1
                lblTel2.text = alumno?.tel2
        
        materias.append(Materia(materia:"Progamación", horario: "7:00 am - 9:00 am", imagen: "fotito", faltas: "1", check: "check2"))
        materias.append(Materia(materia:"Animación", horario: "9:00 am - 11:00 am", imagen: "fotito", faltas: "1", check: "check2"))
        materias.append(Materia(materia:"Diosito", horario: "11:00 am - 12:00 pm", imagen: "fotito", faltas: "1", check: "check2"))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "actualizarContacto" {
                let destino = segue.destination as! ContactoController
                destino.alumno = alumno
                
                destino.callBackActualizar = actualizarContacto
            }
        if segue.identifier == "actualizarMateria" {
           let destino = segue.destination as! DetallesMateria
            destino.materia=materias[tvMateria.indexPathForSelectedRow!.row]
        }
        
        }
    
    func actualizarContacto (alumno: Alumno) {
            
            lblNombre.text = alumno.nombreContacto
            lblParentesco.text = alumno.parentesco
            lblTel1.text = alumno.tel1
            lblTel2.text = alumno.tel2
        }
        
        


}

