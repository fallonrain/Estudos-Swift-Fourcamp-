//
//  ViewController.swift
//  Jokenpo2
//
//  Created by user218968 on 4/22/22.


// 1= Rock      2= Scissors      3= Paper

import UIKit

class ViewController: UIViewController {

// Labels indentificando jogador e a maquina
    
    @IBOutlet weak var labelPlayer: UILabel!
    @IBOutlet weak var labelMachine: UILabel!

// Label identificando o resultado
    @IBOutlet weak var labelResult: UILabel!
    
    
// Label para placar 1 e 2
    
    @IBOutlet weak var labelScore1: UILabel!
    @IBOutlet weak var labelScore2: UILabel!

// Variavel para guardar o resultado das partidas
    
    var score1: Int = 0
    var score2: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
/* Botao com funcao de click para escolher pedra, papel ou tesoura
 Retornando a funcao randomica da "Machine" e comparando a acao*/

    
    @IBAction func buttonRock(_ sender: UIButton) {
        
        labelPlayer.text = "Rock"
        
        var random: Int
        random = Int.random(in: 1...3)
        
        if random == 1 {
            labelResult.text = "Draw"
            labelMachine.text = "Rock"
        }
        else if random == 2 {
            labelResult.text = "You Win!"
            labelMachine.text = "Scissor"
            score1+=1
            labelScore1.text = String(score1)
        }
        else if random == 3 {
            labelResult.text = "You Lose!"
            labelMachine.text = "Paper"
            score2+=1
            labelScore2.text = String(score2)
            
        }
    
    
    
    }
    
    @IBAction func buttonScissor(_ sender: UIButton) {
        labelPlayer.text = "Scissor"
        
        var random: Int
        random = Int.random(in: 1...3)
        
        if random == 1 {
            labelResult.text = "You Lose!"
            labelMachine.text = "Rock"
            score2+=1
            labelScore2.text = String(score2)
        }
        else if random == 2 {
            labelResult.text = "Draw"
            labelMachine.text = "Scissor"
            
        }
        else if random == 3 {
            labelResult.text = "You Win!"
            labelMachine.text = "Paper"
            score1+=1
            labelScore1.text = String(score1)
        }
    }
    
    @IBAction func buttonPaper(_ sender: UIButton) {
        labelPlayer.text = "Paper"
        
        var random: Int
        random = Int.random(in: 1...3)
        
        if random == 1 {
            labelResult.text = "You Win!"
            labelMachine.text = "Rock"
            score1+=1
            labelScore1.text = String(score1)
            
        }
        else if random == 2 {
            labelResult.text = "You Lose!"
            labelMachine.text = "Scissor"
            score2+=1
            labelScore2.text = String(score2)
        }
        else if random == 3 {
            labelResult.text = "Draw"
            labelMachine.text = "Paper"
            
        }
    }
}
