//
//  Materia.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 04/11/22.
//

class Materia {
    var materia : String
    var maestro : String
    var horario : String
    var imagen : String
    var faltas : String
    var check : String
    var asistencia : Bool
    var rate1 : String
    var rate2 : String
    var rate3 : String
    var rate4 : String
    var rate5 : String
    var evaluacion : Int
    
    
    init(materia:String, maestro: String, horario: String, imagen: String, faltas : String, check : String, rate1: String, rate2: String, rate3 : String, rate4 : String, rate5 : String, evaluacion : Int){
        self.materia = materia
        self.maestro = maestro
        self.horario = horario
        self.imagen = imagen
        self.faltas = faltas
        self.check = check
        self.asistencia = false
        self.rate1 = rate1
        self.rate2 = rate2
        self.rate3 = rate3
        self.rate4 = rate4
        self.rate5 = rate5
        self.evaluacion = evaluacion
        
    }
}

