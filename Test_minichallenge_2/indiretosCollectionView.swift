//
//  indiretosCollectionView.swift
//  Test_minichallenge_2
//
//  Created by iago salomon on 07/05/19.
//  Copyright © 2019 iago salomon. All rights reserved.
//

import UIKit

class indiretosCollectionView: UICollectionViewCell {
    let impostos = ["iof","iptu","ipva","irpc","iqpf","irst","kklopp"]
    @IBOutlet weak var mylabel: UILabel!
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return impostos.count
    }
    
    internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.mylabel.text = impostos[indexPath.item]
        
        
        return cell
        
        
    }
}
