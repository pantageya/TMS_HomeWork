//
//  SetupUI.swift
//  Calculate
//
//  Created by Pavel Gedko on 29.04.25.
//

import Foundation
import SnapKit
import UIKit

extension ViewController {
    
    func setupUI() {
        textField.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(150)
            make.left.right.equalToSuperview().inset(40)
            make.height.equalTo(150)
        }
        stack1.addArrangedSubview(buttonAC)
        stack1.addArrangedSubview(buttonPlusMinus)
        stack1.addArrangedSubview(buttonPercent)
        stack1.addArrangedSubview(buttonDivision)
        stack1.snp.makeConstraints { make in
            make.top.equalTo(textField.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        stack2.addArrangedSubview(button7)
        stack2.addArrangedSubview(button8)
        stack2.addArrangedSubview(button9)
        stack2.addArrangedSubview(buttonMultiplication)
        stack2.snp.makeConstraints { make in
            make.top.equalTo(stack1.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        stack3.addArrangedSubview(button4)
        stack3.addArrangedSubview(button5)
        stack3.addArrangedSubview(button6)
        stack3.addArrangedSubview(buttonMinus)
        stack3.snp.makeConstraints { make in
            make.top.equalTo(stack2.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        stack4.addArrangedSubview(button1)
        stack4.addArrangedSubview(button2)
        stack4.addArrangedSubview(button3)
        stack4.addArrangedSubview(buttonPlus)
        stack4.snp.makeConstraints { make in
            make.top.equalTo(stack3.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        stack5.addArrangedSubview(buttonNil)
        stack5.addArrangedSubview(button0)
        stack5.addArrangedSubview(buttonСomma)
        stack5.addArrangedSubview(buttonEquals)
        stack5.snp.makeConstraints { make in
            make.top.equalTo(stack4.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        
    }
}

