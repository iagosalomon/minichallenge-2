//
//  UITabBarController.swift
//  Test_minichallenge_2
//
//  Created by iago salomon on 14/05/19.
//  Copyright © 2019 iago salomon. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
 //class showAlert(title: String, message: String){
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    

        // Do any additional setup after loading the view.
    }
    
    @IBAction func aviso(_ sender: Any) {
       
            let aviso : UIAlertController = UIAlertController(title: "Informações", message: "Os dados levantados são do IBPT (Instituto Brasileiro de Planejamento e Tributação) e da Receita Federal.", preferredStyle:.alert)
        let OkAction = UIAlertAction(title: "OK", style: .default)
        aviso.addAction (OkAction)
        
        
        var alertWindow: UIWindow!
        alertWindow = UIWindow.init(frame: UIScreen.main.bounds)
        alertWindow.rootViewController = UIViewController.init()
        alertWindow.windowLevel  = UIWindow.Level.alert + 1
        alertWindow.makeKeyAndVisible()
        alertWindow.rootViewController?.present(aviso, animated: true)
       
        
        
        
        }
     
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

