//
//  ViewController.swift
//  HomeWork 13 UITableView
//
//  Created by Pavel Gedko on 16.05.25.
//

import UIKit
struct sections {
    let name : String
    let items : [String]
}
class ViewController: UIViewController {
    
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
    let numberSection : [sections] = [
        sections(name: "1", items: ["Авиарежим","Wi-Fi","Bluetooth","Сотовая связь","Режим модема","Аккумулятор","VPN"]),
        sections(name: "2", items: ["Основные","Универсальный доступ","Камера","Обои","Ожидание","Поиск","Пункт управления","Экран \"Домой\"","Экран и яркость","Siri"]),
        sections(name: "3", items: ["Уведмления","Звук и вибрация","Фокусирование","Экранное время"]),
        sections(name: "4", items: ["Game Centr","iCloud","Wallet и Apple Pay"]),
        sections(name: "5", items: ["Приложения"]),
        sections(name: "6", items: ["Разработчик"]),
        
    ]
    
    func setupUI() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .lightGray
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(tableView)
        setupUI()
        
    }
}


extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var vc: UIViewController
        if indexPath.section == 0 {
             vc = ViewController1()
         } else if indexPath.section == 1  {
             vc = ViewController2()
         } else if indexPath.section == 2  {
             vc = ViewController3()
         } else {
             vc = ViewController1()
         }
            self.present(vc, animated: true, completion: nil)
        // криво косо удалось сделать переходны на разные вьюконтроллеры в разных секциях
    }
}

extension ViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        numberSection.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        numberSection[section].items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        let section = numberSection[indexPath.section]
//        cell.textLabel?.text = section.items[indexPath.row]
//        cell.imageView?.image = UIImage(systemName: "chevron.right")
        cell.configure(with: section.items[indexPath.row])
       
        return cell
    }
    
}
#Preview {ViewController()}
