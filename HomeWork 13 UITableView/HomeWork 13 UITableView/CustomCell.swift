//
//  CustomCell.swift
//  HomeWork 13 UITableView
//
//  Created by Pavel Gedko on 19.05.25.
//

import Foundation
import UIKit
import SnapKit

class CustomCell : UITableViewCell {
    let label : UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()

    let imageRight : UIImageView = {
     var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let imageLeft : UIImageView = {
     var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           super.init(style: style, reuseIdentifier: reuseIdentifier)
           contentView.addSubview(imageLeft)
           contentView.addSubview(imageRight)
           contentView.addSubview(label)
            setupUI()
        backgroundColor = .white
        
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        imageLeft.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.height.equalTo(30)
        }
        label.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(imageLeft.snp.right).offset(10)
            make.right.equalTo(imageRight.snp.left)
        }
        imageRight.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-5)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(10)
        }
        
    }
    func configure(with text: String) {
            label.text = text
        imageRight.image = UIImage(systemName: "chevron.right")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        imageLeft.image = UIImage(systemName: "smiley")
        }
   
}
