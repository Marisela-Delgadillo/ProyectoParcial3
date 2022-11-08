//
//  Pago.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 08/11/22.
//

class Pago {
    var concepto : String
    var referencia : String
    var fecha : String
    var importe : String
    var check : String
    
    init(concepto : String, referencia: String, fecha: String, importe: String, check: String)
    {
        self.concepto = concepto
        self.referencia = referencia
        self.fecha = fecha
        self.importe = importe
        self.check = check
    }
}
