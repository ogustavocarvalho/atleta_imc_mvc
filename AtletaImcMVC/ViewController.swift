//
//  ViewController.swift
//  AtletaImcMVC
//
//  Created by Gustavo Carvalho on 03/05/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtAtleta: UITextField!
    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var txtAltura: UITextField!
    @IBOutlet weak var txtImc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcular(_ sender: Any) {
        //remove os espacos extras colocando o conteúdo entre duas constantes
        let pesoTexto = txtPeso.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let alturaTexto = txtAltura.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let a = Atleta()
        
        a.nome = txtAtleta.text
        a.peso = Float(txtPeso.text!)
        a.altura = Float(txtAltura.text!)
        a.calcular()
        txtImc.text = String(format: "%.2f", a.imc!)
    }
    

}

