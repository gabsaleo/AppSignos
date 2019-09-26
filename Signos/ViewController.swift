//
//  ViewController.swift
//  Signos
//
//  Created by Gabriella Messias Aleo on 25/09/19.
//  Copyright © 2019 Gabriella Messias Aleo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var signos: [String] = []
    var signosSignificado: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signos.append("Aries")
        signos.append("Touro")
        signos.append("Gemeos")
        signos.append("Cancer")
        signos.append("Leao")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpiao")
        signos.append("Sagitario")
        signos.append("Capricornio")
        signos.append("Aquario")
        signos.append("Peixes")
        
        
        signosSignificado.append("Aries é lider")
        signosSignificado.append("Touro é vaidoso")
        signosSignificado.append("Gemeos é confuso")
        signosSignificado.append("Cancer é (nao sei))")
        signosSignificado.append("Leao é individualista")
        signosSignificado.append("Virgem é arrumadinho")
        signosSignificado.append("Libra é indeciso")
        signosSignificado.append("Escorpiao é traiçoeiro")
        signosSignificado.append("Sagitario é egoista")
        signosSignificado.append("Capricornio é mao de vaca")
        signosSignificado.append("Aquario é beberrão")
        signosSignificado.append("Peixes é tranquilo")
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        signos.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print()
        
        let alerta = UIAlertController(title: "Significado do signo", message: signosSignificado[indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alerta.addAction(acaoConfirmar)
        
        present(alerta, animated: true, completion: nil)
    }


}

