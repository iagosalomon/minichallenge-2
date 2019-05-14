//
//  ViewController-tela-2.swift
//  Test_minichallenge_2
//
//  Created by Mariana Lima on 13/05/19.
//  Copyright © 2019 iago salomon. All rights reserved.
//

import UIKit

class ViewController_tela_2: UIViewController, UITableViewDelegate, UICollectionViewDataSource {
    @
    
    IBOutlet weak var collectionViewTela2: UICollectionView!
    let carne : [String] = ["Carne","Cerveja", "Celular","Gasolina"]
    var image :[String] = ["steak.png", "beer.png", "Group.png","gasoline.png"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carne.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! Celltela2
        
        cell.lablelTela2Cell.text = carne[indexPath.item]
        cell.imagetela2.image = UIImage (named: image[indexPath.item])
        cell.botao.tag = indexPath.item
       cell.layer.cornerRadius = 15
        
        return cell
    }
    var paginaAtual = 0
    @IBOutlet weak var porcentagemPaga: UILabel!
    @IBOutlet weak var valorTotalDoImposto: UILabel!
    @IBOutlet weak var valorDoProdutoSemImposto: UILabel!
    @IBOutlet weak var nomeObj: UILabel!
    @IBOutlet weak var VALOR: UILabel!
    @IBOutlet weak var usuarioResponde: UITextField!
    @IBAction func MUDAASCOISAS(_ sender: Any) {
        if((sender as AnyObject).tag! == 0){
            nomeObj.text = carne[(sender as AnyObject).tag!]
            paginaAtual = (sender as AnyObject).tag!
            porcentagemPaga.text = ""
            valorTotalDoImposto.text = ""
            valorDoProdutoSemImposto.text = ""
    }
        if((sender as AnyObject).tag! == 1){
            nomeObj.text = carne[(sender as AnyObject).tag!]
            paginaAtual = (sender as AnyObject).tag!
            porcentagemPaga.text = ""
            valorTotalDoImposto.text = ""
            valorDoProdutoSemImposto.text = ""
    }
        if((sender as AnyObject).tag! == 2){
            nomeObj.text = carne[(sender as AnyObject).tag!]
            paginaAtual = (sender as AnyObject).tag!
            porcentagemPaga.text = ""
            valorTotalDoImposto.text = ""
            valorDoProdutoSemImposto.text = ""
            
    }
        if((sender as AnyObject).tag! == 3){
            nomeObj.text = carne[(sender as AnyObject).tag!]
            paginaAtual = (sender as AnyObject).tag!
            porcentagemPaga.text = ""
            valorTotalDoImposto.text = ""
            valorDoProdutoSemImposto.text = ""
        }
}
    
@IBAction func calculaImpostos(_ sender: Any) {
    if (paginaAtual) == 0 {
        if let txt = usuarioResponde.text {
            if let calculo = Float(txt){
                let calculo1 = calculo * 0.1625
                let calculo2 = calculo - calculo1
                porcentagemPaga.text = "a porcentagem paga foi de 16,25%"
                valorTotalDoImposto.text = "valor total do imposto é \(String(format: "%.2f", calculo1)) reais"
                valorDoProdutoSemImposto.text = "valor pago sem imposto é \(String(format: "%.2f", calculo2)) reais"
                }
        }
    }
    if (paginaAtual) == 1 {
        if let txt = usuarioResponde.text {
            if let calculo = Float(txt){
                let calculo1 = calculo * 0.3325
                let calculo2 = calculo - calculo1
                porcentagemPaga.text = "a porcentagem paga foi de 33,25%"
                valorTotalDoImposto.text = "valor total do imposto é \(String(format: "%.2f", calculo1)) reais"
                valorDoProdutoSemImposto.text = "valor pago sem imposto é \(String(format: "%.2f", calculo2)) reais"
                }
        }
    }
    if (paginaAtual) == 2 {
        if let txt = usuarioResponde.text {
            if let calculo = Float(txt){
                let calculo1 = calculo * 0.60
                let calculo2 = calculo - calculo1
                porcentagemPaga.text = "a porcentagem paga foi de 60,00%"
                valorTotalDoImposto.text = "valor total do imposto é \(String(format: "%.2f", calculo1)) reais"
                valorDoProdutoSemImposto.text = "valor pago sem imposto é \(String(format: "%.2f", calculo2)) reais"
            }
        }
    }
   if (paginaAtual) == 3 {
        if let txt = usuarioResponde.text {
            if let calculo = Float(txt){
                let calculo1 = calculo * 0.45
                let calculo2 = calculo - calculo1
                porcentagemPaga.text = "a porcentagem paga foi de 45,00%"
                valorTotalDoImposto.text = "valor total do imposto é \(String(format: "%.2f", calculo1)) reais"
                valorDoProdutoSemImposto.text = "valor pago sem imposto é \(String(format: "%.2f", calculo2)) reais"
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
}
