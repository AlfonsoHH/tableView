//
//  ViewController.swift
//  tableView
//
//  Created by Alfonso Hernandez on 17/1/18.
//  Copyright © 2018 Alfonso Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    let data:[[String]] = [
                            ["Cell a", "Cell b", "Cell c"],
                            ["Cell 1", "Cell 2", "Cell 3"],
                            ["Cell I", "Cell II", "Cell III"]
                        ]
    
    let subtitulo:[[String]] = [
        ["Subtitulo a", "Subtitulo  b", "Subtitulo  c"],
        ["Subtitulo  1", "Subtitulo  2", "Subtitulo  3"],
        ["Subtitulo  I", "Subtitulo II", "Subtitulo III"]
    ]
    
    let cabecera: [String] = ["Letras", "Números", "Números romanos" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let fila = tableView.dequeueReusableCell(withIdentifier: "fila", for: indexPath) as! filacustomizadaTableViewCell
        fila.textLabel?.text = data[indexPath.section][indexPath.row]
        fila.switch.isOn = true
        
        if (indexPath.row==0){
            fila.imageView?.image = UIImage(named: "4-review-cat_icon-icons.com_76680")
        }
        if (indexPath.row==1){
            fila.imageView?.image = UIImage(named: "12-favorite-cat_icon-icons.com_76688")
        }
        if (indexPath.row==2){
            fila.imageView?.image = UIImage(named: "11-gift-cat_icon-icons.com_76687")
        }
        fila.detailTextLabel?.text = subtitulo [indexPath.section][indexPath.row]
        return fila
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return cabecera[section]
    }
 



}

