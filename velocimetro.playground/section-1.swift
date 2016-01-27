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
    
    
    
}







