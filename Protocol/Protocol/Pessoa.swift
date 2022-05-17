//
//  Pessoa.swift
//  Protocol
//
//  Created by Josicleison Elves on 11/05/22.
//

import Foundation

enum Genero:String
{
    case masculino = "masculino"
    case feminino = "feminino"
}

//struct Pessoa
class Pessoa
{
    var nome:String?
    var sobreNome:String?
    var idade:Int?
    var genero:Genero?
    var avatar:String?
    var customID:Int?
    
    init(nome: String?, sobreNome: String?, idade: Int?, genero:Genero?, avatar:String?, customID:Int?)
    {
        self.nome = nome
        self.sobreNome = sobreNome
        self.idade = idade
        self.genero = genero
        self.avatar = avatar
        self.customID = customID
    }
}
