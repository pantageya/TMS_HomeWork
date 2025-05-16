
import Foundation
import UIKit
import SnapKit

protocol ViewController2Delegate  {
    func delegateFunc(text: String)
        
}

class ViewController2: UIViewController {
    
    var delegate : ViewController2Delegate?
    
    private let textField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = " Write "
         return tf
     }()
     
    private let button : UIButton = {
         let button = UIButton()
         button.translatesAutoresizingMaskIntoConstraints = false
         button.setTitle("Tap me", for: .normal)
         button.layer.borderWidth = 1
         button.layer.borderColor = CGColor(gray: 1, alpha: 1)
         button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(goBack), for: .touchUpInside)
         return button
     }()
     
      @objc func goBack() {
          guard let text = textField.text else {return}
          delegate?.delegateFunc(text: text)
          dismiss(animated: true)
     }
     
     private func setupUI () {
         textField.snp.makeConstraints { make in
             make.top.equalToSuperview().offset(60)
             make.centerX.equalToSuperview()
         }
         button.snp.makeConstraints { make in
             make.top.equalTo(textField.snp.bottom).offset(20)
             make.centerX.equalToSuperview()
             
         }
         
     }
     override func viewDidLoad() {
         super.viewDidLoad()
         view.backgroundColor = .green
         view.addSubview(textField)
         view.addSubview(button)
         setupUI()
         
     }

}
