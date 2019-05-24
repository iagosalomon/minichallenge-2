//
//  ViewController.swift
//  Test_minichallenge_2
//
//  Created by iago salomon on 30/04/19.
//  Copyright © 2019 iago salomon. All rights reserved.
//

//Tela de selecao do imposto

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource , UICollectionViewDelegate{
    
    //Declaracao das duas collections views
    
    @IBOutlet weak var collectionView: UICollectionView! // tag = 1
    @IBOutlet weak var collectionView2: UICollectionView!// tag = 2
    
    
    // vetores das informacoes do view
    let impostos = ["ITBI","IPTU","IPVA","IRPF","ITCD"]
    let impostosimage = ["ITBI.png","IPTU.png","ipva.png","IRPF.png","ITCD.png"]
    
    
    
    
    let impostosindiretos = ["IOF","ICMS","ISS","IPI","II"]
    let impostosindiretosimage = ["IOF.png","ICMS.png","ISS.png","IPI.png","II.png"]
    
    
    @IBOutlet weak var mylabel: UILabel!
    
    
    
    //funcao que define o numero de celulas nas collections views
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView.tag == 1){
            return impostos.count
        }else{
            return impostosindiretos.count
        }
        
    }
    
    
    
    
    
    // funcao que define oque aparece na collection view
    internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (collectionView.tag == 1){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
            //define texto da celula
            cell.mylabel.text = impostos[indexPath.item]
            
            
            //coloca bordas arredondadas e sombra na celula
            cell.contentView.layer.cornerRadius = 10.0
            cell.contentView.layer.borderWidth = 1.0
            cell.contentView.layer.borderColor = UIColor.clear.cgColor
            cell.contentView.layer.masksToBounds = true
            cell.layer.shadowColor = #colorLiteral(red: 0.1529411765, green: 0.6274509804, blue: 0.6196078431, alpha: 1)
            cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
            cell.layer.shadowRadius = 1.0
            cell.layer.shadowOpacity = 1.0
            cell.layer.masksToBounds = false
            cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
            
            
            //define a imagem da celula
            cell.imagemCell.image = UIImage(named: impostosimage[indexPath.item])
            
            
            
            
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
            
            //define texto da celula
            cell.mylabel.text = impostosindiretos[indexPath.item]
            
            
            //coloca bordas arredondadas e sombra na celula
            cell.contentView.layer.cornerRadius = 10.0
            cell.contentView.layer.borderWidth = 1.0
            cell.contentView.layer.borderColor = UIColor.clear.cgColor
            cell.contentView.layer.masksToBounds = true
            cell.layer.shadowColor = #colorLiteral(red: 0.1882352941, green: 0.8078431373, blue: 0.5333333333, alpha: 1)
            cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
            cell.layer.shadowRadius = 1.0
            cell.layer.shadowOpacity = 1.0
            cell.layer.masksToBounds = false
            cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
            
            
            //define a imagem da celula
            cell.imagemCell2.image = UIImage(named: impostosindiretosimage[indexPath.item])
            
            return cell
        }
        
    }
    
    
    
    
    //funcao chamada quando a tela carrega
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    // funcao que reseta a tab bar quando transiciona para essa tela
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.navigationController?.navigationBar.topItem?.title = "Impostos"
        
        
    }
    
    
    
    
    
    
    // Funcao que manda informacoes para as tela de explicao de impostos
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // envia um seletor para ser usado para montar a tela de impostos
        
        if segue.identifier! == "Impostospage"{
            // envia um seletor para falar se o imposto eh direto ou indireto
            (segue.destination as! Impostospage).tipoImposto = 1
            //Manda qual imposto que eh
            (segue.destination as! Impostospage).seletor = collectionView.indexPathsForSelectedItems![0].item
        }
        
        if segue.identifier! == "Impostospage2"{
            (segue.destination as! Impostospage).tipoImposto = 2
            (segue.destination as! Impostospage).seletor = collectionView2.indexPathsForSelectedItems![0].item
        }
    }
    
    
    @objc func keyboardWillChange(notification: Notification){
        self.navigationController?.navigationBar.topItem?.title = "Impostos"
        
    }
    
    
}

