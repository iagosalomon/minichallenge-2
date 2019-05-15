//
//  ViewController-tela-2.swift
//  Test_minichallenge_2
//
//  Created by Mariana Lima on 13/05/19.
//  Copyright © 2019 iago salomon. All rights reserved.
//

import UIKit

class ViewController_tela_2: UIViewController, UITableViewDelegate, UICollectionViewDataSource,UITextFieldDelegate {
    @IBOutlet weak var collectionViewTela2: UICollectionView!
    
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
    
    @IBOutlet weak var botao_calcula: UIButton!
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
    
@objc func calculaImpostos(_ sender: Any) {
    
    usuarioResponde.resignFirstResponder()
    
    
    if (paginaAtual == 0) {
        if let txt = usuarioResponde.text {
            let txtfixed = txt.replacingOccurrences(of: ",", with: ".")
            if let calculo = Float(txtfixed){
                let calculo1 = calculo * 0.1625
                let calculo2 = calculo - calculo1
                porcentagemPaga.text = "A porcentagem paga foi de 16,25%"
                valorTotalDoImposto.text = "Valor total do imposto é \(String(format: "%.2f", calculo1)) reais"
                valorDoProdutoSemImposto.text = "Valor pago sem imposto é \(String(format: "%.2f", calculo2)) reais"
                usuarioResponde.text = ""
                
                }
            
        }
    }
    if (paginaAtual == 1) {
        if let txt = usuarioResponde.text {
            let txtfixed = txt.replacingOccurrences(of: ",", with: ".")
            if let calculo = Float(txtfixed){
                let calculo1 = calculo * 0.3325
                let calculo2 = calculo - calculo1
                porcentagemPaga.text = "A porcentagem paga foi de 33,25%"
                valorTotalDoImposto.text = "Valor total do imposto é \(String(format: "%.2f", calculo1)) reais"
                valorDoProdutoSemImposto.text = "Valor pago sem imposto é \(String(format: "%.2f", calculo2)) reais"
                usuarioResponde.text = ""
                }
        }
        
    }
    if (paginaAtual == 2) {
        if let txt = usuarioResponde.text {
            let txtfixed = txt.replacingOccurrences(of: ",", with: ".")
            if let calculo = Float(txtfixed){
                let calculo1 = calculo * 0.60
                let calculo2 = calculo - calculo1
                porcentagemPaga.text = "A porcentagem paga foi de 60,00%"
                valorTotalDoImposto.text = "Valor total do imposto é \(String(format: "%.2f", calculo1)) reais"
                valorDoProdutoSemImposto.text = "Valor pago sem imposto é \(String(format: "%.2f", calculo2)) reais"
                usuarioResponde.text = ""
            }
        }
    }
   if (paginaAtual == 3) {
        if let txt = usuarioResponde.text {
            let txtfixed = txt.replacingOccurrences(of: ",", with: ".")
            if let calculo = Float(txtfixed){
                let calculo1 = calculo * 0.45
                let calculo2 = calculo - calculo1
                porcentagemPaga.text = "A porcentagem paga foi de 45,00%"
                valorTotalDoImposto.text = "Valor total do imposto é \(String(format: "%.2f", calculo1)) reais"
                valorDoProdutoSemImposto.text = "Valor pago sem imposto é \(String(format: "%.2f", calculo2)) reais"
                usuarioResponde.text = ""
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usuarioResponde.delegate = self
        
        botao_calcula.layer.cornerRadius = 10
        
    
        
        
        
        
        //listen for  beyboard events
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange), name:UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange), name:UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange), name:UIResponder.keyboardWillChangeFrameNotification, object: nil)

        
}
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.topItem?.title = "Calculadora"
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func returnpressed (){
        usuarioResponde.resignFirstResponder()

        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        usuarioResponde.resignFirstResponder()
    }
    
    
    // make the screen go up
    
    @objc func keyboardWillChange(notification: Notification){
        guard let keyboardRect = ( notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else{
            return
        }
        
        
        if (notification.name == UIResponder.keyboardWillShowNotification || notification.name == UIResponder.keyboardWillChangeFrameNotification ){
        view.frame.origin.y = -keyboardRect.height
        }else{
            view.frame.origin.y = 0
        }
    
}
}
