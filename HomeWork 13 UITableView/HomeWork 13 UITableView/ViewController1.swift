//
//  ViewController1.swift
//  HomeWork 13 UITableView
//
//  Created by Pavel Gedko on 19.05.25.
//

import Foundation
import UIKit
import SnapKit

class ViewController1 : UIViewController {
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.text = "VC_1"
        label.layer.borderColor = UIColor(.black).cgColor
        label.layer.borderWidth = 1
        label.backgroundColor = .yellow
        return label
    }()
    
    func setupUI() {
        label.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(label)
        setupUI()
    }
}

#Preview {ViewController1()}
