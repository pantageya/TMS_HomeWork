//
//  ViewController.swift
//  HomeWork 12
//
//  Created by Pavel Gedko on 16.05.25.
//
import Foundation
import UIKit
import SnapKit

class FirstCallBackVC: UIViewController {

   private let label : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Hello, World!"
        return label
    }()
    
   private let button : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" Tap me ", for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = CGColor(gray: 1, alpha: 1)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
        return button
    }()
    
     @objc func nextVC() {
         let vc = SecondCallBackVC { [weak self] text in
             self?.label.text = text
         }

         present(vc, animated: true)
    }
    
    private func setupUI () {
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.centerX.equalToSuperview()
        }
        button.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        view.addSubview(label)
        view.addSubview(button)
        setupUI()
        
    }


}

//extension ViewController1: ViewController2Delegate {
//    func delegateFunc(text: String) {
//        label.text = text
//    }
//}
