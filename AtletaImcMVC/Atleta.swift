//
//  Atleta.swift
//  AtletaImcMVC
//
//  Created by Gustavo Carvalho on 03/05/26.
//
import Foundation

class Atleta{
    var nome:String!
    var peso:Float!
    var altura:Float!
    var imc:Float!

    func calcular(){
        imc = peso/(altura*altura)
    }
    
    init(){
    
    }
    
    init(nome: String, peso: Float, altura: Float, imc: Float) {
        self.nome = nome
        self.peso = peso
        self.altura = altura
        self.imc = imc
    }
}
