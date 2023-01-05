//
//  RegisterView.swift
//  Fourbank
//
//  Created by Josicleison Elves on 01/06/22.
//

import UIKit

class RegisterView: UIViewController {
    
    @IBOutlet weak var greetingsLabel: UILabel!
    
    @IBOutlet weak var registerLabel: UILabel!
    @IBOutlet weak var registerTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    
    var stage: Int8 = 0
    var cpf: String?,
        password: String?,
        email: String?,
        fullName: String?,
        phone: String?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        
        switch stage {
            
            case 0:
            
                stage += 1
                
                registerLabel.isHidden = false
                registerTextField.isHidden = false
                greetingsLabel.text = "Qual o seu CPF?"
            
            case 1:
            
                if registerTextField.text != "" && registerTextField.text?.count ?? 0 == 11 {
                    
                    let registerController = RegisterController()
                    if !registerController.validateRegister(registerTextField.text ?? "") {
                        
                        cpf = registerTextField.text
                        stage += 1
                        
                        //preparation for next stage
                        registerTextField.text = ""
                        confirmTextField.isHidden = false
                        confirmTextField.keyboardType = .numberPad
                        registerTextField.keyboardType = .numberPad
                        greetingsLabel.text = "Digite uma senha:"
                        registerLabel.text = "Senha"
                        registerTextField.placeholder = "Apenas números"
                    }
                    else {
                        
                        let alert = UIAlertController(title: "Falha no cadastro", message: "Este CPF Ja Existe", preferredStyle: .alert)
                        
                        alert.addAction(UIAlertAction(title: "Ok", style: .default))
                        self.present(alert, animated: true, completion: nil)
                    }
                }
                else {
                    
                    let alert = UIAlertController(title: "Falha no cadastro", message: "Digite um CPF valido", preferredStyle: .alert)
                    
                    alert.addAction(UIAlertAction(title: "Ok", style: .default))
                    self.present(alert, animated: true, completion: nil)
                }
            
            case 2:
            
                if registerTextField.text == confirmTextField.text && registerTextField.text != ""{
                    
                    password = registerTextField.text
                    stage += 1
                
                    registerTextField.text = ""
                    confirmTextField.text = ""
                    confirmTextField.isHidden = true
                    registerTextField.keyboardType = .namePhonePad
                    greetingsLabel.text = "Qual é o seu nome completo?"
                    registerLabel.text = "Nome"
                    registerTextField.placeholder = "Digite seu nome"
                }
                else {
                    
                    let alert = UIAlertController(title: "Falha no cadastro", message: "valor invalido", preferredStyle: .alert)
                    
                    alert.addAction(UIAlertAction(title: "Ok", style: .default))
                    self.present(alert, animated: true, completion: nil)
                }
            
            case 3:
            
                if registerTextField.text != ""{
                    
                    fullName = registerTextField.text
                    stage += 1
                    
                    //preparation for next stage
                    registerTextField.text = ""
                    greetingsLabel.text = "Qual é o seu e-mail?"
                    registerTextField.placeholder = "Digite o seu E-mail"
                    registerLabel.text = "E-mail"
                }
                else {
                    
                    let alert = UIAlertController(title: "Falha no cadastro", message: "valor invalido", preferredStyle: .alert)
                    
                    alert.addAction(UIAlertAction(title: "Ok", style: .default))
                    self.present(alert, animated: true, completion: nil)
                }
            
            case 4:
            
                if registerTextField.text != ""{
                    
                    email = registerTextField.text
                    stage += 1
                    
                    //preparation for next stage
                    registerTextField.text = ""
                    registerTextField.keyboardType = .numberPad
                    greetingsLabel.text = "Qual é o seu número de celular?"
                    registerLabel.text = "Número"
                    registerTextField.placeholder = "(xx) xxxxx-xxxx"
                }
                else {
                    
                    let alert = UIAlertController(title: "Falha no cadastro", message: "valor invalido", preferredStyle: .alert)
                    
                    alert.addAction(UIAlertAction(title: "Ok", style: .default))
                    self.present(alert, animated: true, completion: nil)
                }
            
            case 5:
            
                if registerTextField.text != ""{
                    
                    phone = registerTextField.text
                    stage += 1
                    
                    //preparation for next stage
                    registerTextField.text = ""
                    greetingsLabel.text = "Enviamos um código para seu SMS"
                    registerLabel.text = "Código"
                    registerTextField.placeholder = "Código SMS"
                }
                else {
                    
                    let alert = UIAlertController(title: "Falha no cadastro", message: "valor invalido", preferredStyle: .alert)
                    
                    alert.addAction(UIAlertAction(title: "Ok", style: .default))
                    self.present(alert, animated: true, completion: nil)
                }
            
            case 6:
            
                stage += 1
            
                registerTextField.text = ""
                registerLabel.isHidden = true
                registerTextField.isHidden = true
                greetingsLabel.text = "Seu cadastro foi concluido com sucesso!"
                sender.setTitle("Confirmar", for: .normal)
                sender.attributedTitle(for: .normal)
            
                let registerController = RegisterController()
                registerController.register(fullName,
                                            cpf,
                                            phone,
                                            email,
                                            password)
            default:
            
                dismiss(animated: true)
        }
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem){
        
        switch stage
        {
            case 0:
            
                dismiss(animated: true)
            
            case 2:
            
                confirmTextField.isHidden = true
                greetingsLabel.text = "Qual o seu CPF?"
                registerLabel.text = "CPF"
                registerTextField.placeholder = "Apenas números"
                stage -= 1
            
            case 3:
            
                confirmTextField.isHidden = false
                confirmTextField.keyboardType = .numberPad
                registerTextField.keyboardType = .numberPad
                greetingsLabel.text = "Digite uma senha:"
                registerLabel.text = "Senha"
                registerTextField.placeholder = "Apenas números"
                stage -= 1
            
            case 4:
            
                registerTextField.keyboardType = .namePhonePad
                greetingsLabel.text = "Qual é o seu nome completo?"
                registerLabel.text = "Nome"
                registerTextField.placeholder = "Digite seu nome"
                stage -= 1
            
            case 5:
            
                greetingsLabel.text = "Qual é o seu e-mail?"
                registerTextField.placeholder = "Digite o seu E-mail"
                registerLabel.text = "E-mail"
                stage -= 1
            
            case 6:
            
                registerTextField.keyboardType = .numberPad
                greetingsLabel.text = "Qual é o seu número de celular?"
                registerLabel.text = "Número"
                registerTextField.placeholder = "(xx) xxxxx-xxxx"
                stage -= 1
            
            default:
            
                dismiss(animated: true)
        }
    }
    
    func alert(_ Messagetitle: String, message: String,_ buttonTitle: String,_ messageStyle: UIAlertController.Style) {
        
            let alert = UIAlertController(title: "Falha no cadastro", message: "valor invalido", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true, completion: nil)
    }
}
