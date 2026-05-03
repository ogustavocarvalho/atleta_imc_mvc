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
        let pesoTexto = txtPeso.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let alturaTexto = txtAltura.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        
        //Verifica se os campos estão vazios
        if pesoTexto.isEmpty || alturaTexto.isEmpty {
            mostrarAlerta(mensagem: "Preencha os campos de peso e altura")
        }
        
        // Troca vírgula por ponto, caso seja digitado 70.5
        let pesoFormatado = pesoTexto.replacingOccurrences(of: ",", with: ".")
        let alturaFormatada = alturaTexto.replacingOccurrences(of: ",", with: ".")
        
        //Verifica se os valores são numéricos
        guard let peso = Float(pesoFormatado),
                let altura = Float(alturaFormatada) else {
            mostrarAlerta(mensagem: "Digite apenas números validos")
            return
        }
        
        // Verifica se os valores são maiores que zero
        if peso <= 0 || altura <= 0 {
            mostrarAlerta(mensagem: "Peso e altura precisam ser maiores que 0")
            return
        }
        
        //Funcão para receber o texto  e mostrar mensagem
        func mostrarAlerta(mensagem: String) {
            let alerta: UIAlertController = UIAlertController(
                title: "Atenção",
                message: mensagem,
                preferredStyle: .alert)
            alerta.addAction(UIAlertAction(
                title: "OK",
                style: .default)
            )
            present(alerta, animated: true)
        }
        
        
        let a = Atleta()
        
        a.nome = txtAtleta.text
        a.peso = Float(txtPeso.text!)
        a.altura = Float(txtAltura.text!)
        a.calcular()
        txtImc.text = String(format: "%.2f", a.imc!)
    }
    

}

