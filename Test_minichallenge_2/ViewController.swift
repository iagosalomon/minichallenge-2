//
//  ViewController.swift
//  Test_minichallenge_2
//
//  Created by iago salomon on 30/04/19.
//  Copyright © 2019 iago salomon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource , UICollectionViewDelegate{
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!

    
    let impostos = ["ITBI","IPTU","IPVA","IRPF","ITCD"]
    let impostosindiretos = ["IOF","ICMS","ISS","IPI","II"]
    @IBOutlet weak var mylabel: UILabel!
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView.tag == 1){
        return impostos.count
        }else{
            return impostosindiretos.count
        }
        
    }
    
    internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (collectionView.tag == 1){
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell

        cell.mylabel.text = impostos[indexPath.item]
        cell.contentView.layer.cornerRadius = 2.0
    
        return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
            
            cell.mylabel.text = impostosindiretos[indexPath.item]
            cell.contentView.layer.cornerRadius = 2.0
            cell.contentView.layer.borderWidth = 1
            cell.contentView.layer.borderColor = UIColor.clear.cgColor
            cell.contentView.layer.masksToBounds = true
            return cell
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier! == "Impostospage"{
            (segue.destination as! Impostospage).tipoImposto = 1
            (segue.destination as! Impostospage).seletor = collectionView.indexPathsForSelectedItems![0].item
            }
            
            if segue.identifier! == "Impostospage2"{
                (segue.destination as! Impostospage).tipoImposto = 2
                (segue.destination as! Impostospage).seletor = collectionView2.indexPathsForSelectedItems![0].item
                }
            }
        
    }
    

