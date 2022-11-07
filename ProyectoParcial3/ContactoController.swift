//
//  CeldaContactoController.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 07/11/22.
//

import UIKit

class ContactoController : UIViewController {
    
    var alumno : Alumno?
    
    var callBackActualizar : ((Alumno) -> Void)?
    
    
   
    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtParentezco: UITextField!
    
    @IBOutlet weak var txtTel1: UITextField!
    
    @IBOutlet weak var txtTel2: UITextField!
    
    override func viewDidLoad() {
            if alumno != nil {
                txtNombre.text = alumno?.nombreContacto
                txtParentezco.text = alumno?.parentesco
                txtTel1.text = alumno?.tel1
                txtTel2.text = alumno?.tel2
            }
        }
    
    @IBAction func doTapActualizar(_ sender: Any) {
        if callBackActualizar != nil {
                   alumno?.nombreContacto = txtNombre.text!
                   alumno?.parentesco = txtParentezco.text!
                   alumno?.tel1 = txtTel1.text!
                   alumno?.tel2 = txtTel2.text!
                   callBackActualizar!(alumno!)
                   self.navigationController?.popViewController(animated: true)
               }
    }
    
}
