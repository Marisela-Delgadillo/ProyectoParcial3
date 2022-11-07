//
//  Alumno.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 07/11/22.
//

class Alumno {
    var nombre : String
    var foto : String
    var matricula : String
    var nombreContacto : String
    var parentesco: String
    var tel1: String
    var tel2: String
    
    init(nombre: String, foto: String, matricula: String, nombreContacto: String, parentesco: String, tel1: String, tel2: String)
    {
        self.nombre = nombre
        self.foto = foto
        self.matricula = matricula
        self.nombreContacto = nombreContacto
        self.parentesco = parentesco
        self.tel1 = tel1
        self.tel2 = tel2
    }
    
}
