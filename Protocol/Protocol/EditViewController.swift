//
//  EditViewController.swift
//  Protocol
//
//  Created by Josicleison Elves on 11/05/22.
//
import UIKit

protocol EditViewControllerProtocol: AnyObject
{
    func updatePessoa(value: Pessoa)
}

class EditViewController: UIViewController
{
    @IBOutlet weak var editNameTextField: UITextField!
    @IBOutlet weak var editSobreNomeTextField: UITextField!
    @IBOutlet weak var editAgeTextField: UITextField!
    @IBOutlet weak var editGeneroTextField: UITextField!
    
    var pessoaSelecionada: Pessoa?
    
    weak var delegate: EditViewControllerProtocol?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if let _pessoaSelecionada = self.pessoaSelecionada
        {
            self.editNameTextField.text = _pessoaSelecionada.nome
            self.editSobreNomeTextField.text = _pessoaSelecionada.sobreNome
            self.editAgeTextField.text = String(_pessoaSelecionada.idade ?? 0)
            self.editGeneroTextField.text = _pessoaSelecionada.genero?.rawValue
        }
        
        self.editNameTextField.delegate = self
        self.editSobreNomeTextField.delegate = self
        self.editAgeTextField.delegate = self
        self.editGeneroTextField.delegate = self
        
        self.editNameTextField.becomeFirstResponder()
        self.editAgeTextField.keyboardType = .decimalPad
        
        self.addButtonOnKeyBoard()
    }
    
    private func addButtonOnKeyBoard()
    {
        let toolBar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        
        toolBar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonTapped))
        
        let items = [flexSpace, doneButton]
        
        toolBar.items = items
        toolBar.sizeToFit()
        
        self.editAgeTextField.inputAccessoryView = toolBar
    }
    
    @objc func doneButtonTapped()
    {
        self.editGeneroTextField.becomeFirstResponder()
    }
}

extension EditViewController: UITextFieldDelegate
{
    func textFieldDidEndEditing(_ textField: UITextField)
    {
        switch textField
        {
            case self.editNameTextField:
                self.pessoaSelecionada?.nome = textField.text
            case self.editSobreNomeTextField:
                self.pessoaSelecionada?.sobreNome = textField.text
            case self.editAgeTextField:
                self.pessoaSelecionada?.idade = Int(textField.text ?? "0")
            default:
                self.pessoaSelecionada?.genero = Genero(rawValue: textField.text ?? "")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        switch textField
        {
            case self.editNameTextField:
                self.editSobreNomeTextField.becomeFirstResponder()
            case self.editSobreNomeTextField:
                self.editAgeTextField.becomeFirstResponder()
            case self.editAgeTextField:
                self.editGeneroTextField.becomeFirstResponder()
            default:
                textField.resignFirstResponder()
            if let _pessoaSelecionada = self.pessoaSelecionada
            {
                self.delegate?.updatePessoa(value: _pessoaSelecionada)
            }
        }
        return true
    }
}
