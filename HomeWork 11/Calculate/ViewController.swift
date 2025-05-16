//
//  ViewController.swift
//  Calculate
//
//  Created by Pavel Gedko on 29.04.25.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var textField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "0"
        tf.textColor = .white
        //        tf.textColor = .black
        tf.backgroundColor = .black
        tf.textAlignment = .right
        tf.font = UIFont.systemFont(ofSize: 80)
        return tf
    }()
    
    lazy var stack1 : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 10
        stack.distribution = .fillEqually
        return stack
    }()
    lazy var buttonAC : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("AC", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(buttonACAction), for: .touchUpInside)
        return button
    }()
    lazy var buttonPlusMinus : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(buttonPlusMinusAction), for: .touchUpInside)
        return button
    }()
    lazy var buttonPercent : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("%", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(buttonPercentAction), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonDivision : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("/", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(buttonDivisionAction), for: .touchUpInside)
        return button
    }()
    
    
    lazy var stack2 : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 10
        stack.distribution = .fillEqually
        return stack
    }()
    lazy var button7 : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("7", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(button7Action), for: .touchUpInside)
        return button
    }()
    lazy var button8 : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("8", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(button8Action), for: .touchUpInside)
        return button
    }()
    lazy var button9 : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("9", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(button9Action), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonMultiplication : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("*", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(buttonMultiplicationAction), for: .touchUpInside)
        return button
    }()
    
    lazy var stack3 : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 10
        stack.distribution = .fillEqually
        return stack
    }()
    lazy var button4 : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("4", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(button4Action), for: .touchUpInside)
        return button
    }()
    lazy var button5 : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("5", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(button5Action), for: .touchUpInside)
        return button
    }()
    lazy var button6 : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("6", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(button6Action), for: .touchUpInside)
        return button
    }()
    lazy var buttonMinus: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(buttonMinusAction), for: .touchUpInside)
        
        return button
    }()
    
    
    lazy var stack4 : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 10
        stack.distribution = .fillEqually
        return stack
    }()
    lazy var button1 : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(button1Action), for: .touchUpInside)
        return button
    }()
    lazy var button2 : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("2", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(button2Action), for: .touchUpInside)
        return button
    }()
    lazy var button3 : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("3", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(button3Action), for: .touchUpInside)
        return button
    }()
    lazy var buttonPlus: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(buttonPlusAction), for: .touchUpInside)
        return button
    }()
    
    
    lazy var stack5 : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 10
        stack.distribution = .fillEqually
        return stack
    }()
    lazy var buttonNil : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle(" ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
//        button.addTarget(self, action: #selector(button6Action), for: .touchUpInside)
        return button
    }()
    lazy var button0 : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("0", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(button0Action), for: .touchUpInside)
        return button
    }()
    lazy var buttonСomma : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle(",", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(buttonСommaAction), for: .touchUpInside)
        return button
    }()
    lazy var buttonEquals: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 40
        button.setTitle("=", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        button.addTarget(self, action: #selector(buttonEqualsAction), for: .touchUpInside)
        return button
    }()
    
    @objc func buttonACAction() {
        textField.text = " "
    }
    
    
    
    @objc func button7Action() {
        textField.text! += "7"
    }
    @objc func button8Action() {
        textField.text! += "8"
    }
    @objc func button9Action() {
        textField.text! += "9"
    }
    @objc func button4Action() {
        textField.text! += "4"
    }
    @objc func button5Action() {
        textField.text! += "5"
    }
    @objc func button6Action() {
        textField.text! += "6"
    }
    @objc func button1Action() {
        textField.text! += "1"
    }
    @objc func button2Action() {
        textField.text! += "2"
    }
    @objc func button3Action() {
        textField.text! += "3"
    }
    @objc func button0Action() {
        textField.text! += "0"
    }
    @objc func buttonСommaAction() {
        var a = textField.text!
         if a.last == "," {
             a.removeLast()
         } else {
             a += ","
         }
         textField.text! = a
    }
    
    @objc func buttonDivisionAction() {
        var a = textField.text!
         if a.last == "/" {
             a.removeLast()
         } else {
             a += "/"
         }
         textField.text! = a
    }
        @objc func buttonMultiplicationAction() {
            var a = textField.text!
             if a.last == "*" {
                 a.removeLast()
             } else {
                 a += "*"
             }
             textField.text! = a
         }
    @objc func buttonPlusMinusAction() {
        var a = textField.text!
        if a.first == "-" {
            a.removeFirst()
        } else {
            a = "-" + a
        }
        textField.text! = a
    }
    @objc func buttonPercentAction() {
        var a = textField.text!
         if a.last == "%" {
             a.removeLast()
         } else {
             a += "%"
         }
         textField.text! = a
    }
    @objc func buttonMinusAction() {
        var a = textField.text!
         if a.last == "-" {
             a.removeLast()
         } else {
             a += "-"
         }
         textField.text! = a
    }
    @objc func buttonPlusAction() {
        var a = textField.text!
         if a.last == "+" {
             a.removeLast()
         } else {
             a += "+"
         }
         textField.text! = a
    }
    @objc func buttonEqualsAction() {
//        var a =  ?? nil
//        let b = Int(textField.text ?? "")
//       
//        print(b!)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(textField)
        view.addSubview(stack1)
        view.addSubview(stack2)
        view.addSubview(stack3)
        view.addSubview(stack4)
        view.addSubview(stack5)
        
        setupUI()
    }
    
    
}

#Preview{ViewController()
}


    

