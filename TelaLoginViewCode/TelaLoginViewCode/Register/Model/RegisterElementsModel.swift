//
//  RegisterElementsModel.swift
//  TelaLoginViewCode
//
//  Created by user218968 on 7/1/22.
//

import Foundation
import UIKit
import CoreData

class RegisterElementsModel: UIViewController {
    
    var registerEmailTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.placeholder = "E-mail"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    var registerPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.placeholder = "Password"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    var confirmTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.placeholder = "Confirm your Password"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    var confirmButton: UIButton = {
        let button = UIButton()
        button.setTitle("Confirm", for: .normal)
        button.backgroundColor = .cyan
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
}
