// Playground - noun: a place where people can play

import UIKit


// Declarando la enumeracion


enum Velocidades: Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    
    var velocidad:Velocidades
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String){
        var mensaje = ""
        
        let actual = velocidad.rawValue
        switch velocidad{
        case .Apagado:
            velocidad = .VelocidadBaja
            mensaje = "Apagado"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            mensaje = "Velocidad baja"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            mensaje = "Velocidad media"
        case .VelocidadAlta:
            velocidad = .Apagado
            mensaje = "Velocidad alta"
        }
        return(actual, mensaje)
    }
}

let auto = Auto()

for i in 1...20{
    let resultado = auto.cambioDeVelocidad()
    print("\(i). \(resultado.actual), \(resultado.velocidadEnCadena)\n")
}






