//
//  ViewController-tela-2.swift
//  Test_minichallenge_2
//
//  Created by Mariana Lima on 13/05/19.
//  Copyright © 2019 iago salomon. All rights reserved.
//

//pagina da calculadora


import UIKit

class ViewController_tela_2: UIViewController, UITableViewDelegate, UICollectionViewDataSource,UITextFieldDelegate,UICollectionViewDelegate {
    
    
    // declaracao da collection view
    @IBOutlet weak var collectionViewTela2: UICollectionView!
    
    
    //Vetores das informacoes dos produtos e das respectivas imagens
    let carne : [String] = ["CARNE","CERVEJA", "CELULAR","GASOLINA"]
    var image :[String] = ["steak.png", "beer.png", "cell.png","gasoline.png"]
    var imagePB :[String] = ["steakPB.png", "beerPB.png", "cellPB.png","gasoline.png"]
    
    
    
    // Funcao que define o numero de celulas na collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carne.count
        
    }
    
    
    
    //Funcao que define o conteudo de cada celula
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //cria a celula
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! Celltela2
        // define o conteudo das celulas
        
        cell.lablelTela2Cell.text = carne[indexPath.item]
        if indexPath == paginaAtual {
            cell.imagetela2.image = UIImage (named: image[indexPath.item])
        } else {
            cell.imagetela2.image = UIImage (named: imagePB[indexPath.item])
        }
        
        // define a tag de cada celula
//        cell.botao.tag = indexPath.item
        
        
        // arredonda a borda da celula para ficar parecido com um card
        cell.layer.cornerRadius = 15
        
        return cell
    }
    
    
    // Variavel usada para falar qual a pagina eh a atual
    var paginaAtual : IndexPath = [];
    
    
    // Labes da pagina e text field
    @IBOutlet weak var porcentagemPaga: UILabel!
    @IBOutlet weak var valorTotalDoImposto: UILabel!
    @IBOutlet weak var valorDoProdutoSemImposto: UILabel!
    @IBOutlet weak var nomeObj: UILabel!
    @IBOutlet weak var VALOR: UILabel!
    @IBOutlet weak var usuarioResponde: UITextField!
    
    
    // Botao da tela
    @IBOutlet weak var botao_calcula: UIButton!
    
    
    //Funcao chamada toda a vez que se troca de pagina ou card que apaga as informacoes da pagina antiga e as deixa em branco e Coloca o Nome da pagina selecionada
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(indexPath.item == 0){
            //Coloca o nome da pagina selecionada
            nomeObj.text = carne[indexPath.item]
            //troca a imagem
            collectionViewTela2.reloadData()
            //Seta a variavel de pagina atual para o programa saber onde esta
            paginaAtual = indexPath
            print(indexPath.row)

            
            //apaga as informacoes da tela antiga
            porcentagemPaga.text = ""
            valorTotalDoImposto.text = ""
            valorDoProdutoSemImposto.text = ""
        }
        if(indexPath.item == 1){
            nomeObj.text = carne[indexPath.item]
            collectionViewTela2.reloadData()
            paginaAtual = indexPath
            porcentagemPaga.text = ""
            valorTotalDoImposto.text = ""
            valorDoProdutoSemImposto.text = ""
        }
        if(indexPath.item == 2){
            nomeObj.text = carne[indexPath.item]
            collectionViewTela2.reloadData()
            paginaAtual = indexPath
            porcentagemPaga.text = ""
            valorTotalDoImposto.text = ""
            valorDoProdutoSemImposto.text = ""
            
        }
        if(indexPath.item == 3){
            nomeObj.text = carne[indexPath.item]
            collectionViewTela2.reloadData()
            paginaAtual = indexPath
            porcentagemPaga.text = ""
            valorTotalDoImposto.text = ""
            valorDoProdutoSemImposto.text = ""
        }
        
    }
 
    
    // Funcao chamada pelo botao que pega o valor colocado no textfield e calcula o imposto para o produto selecionado
    @objc func calculaImpostos(_ sender: Any) {
        
        // fecha o teclado se ele estiver aberto
        usuarioResponde.resignFirstResponder()
        
        
        if (paginaAtual.item == 0) {
            
            // Joga o conteudo do textfield em uma variavel
            if let txt = usuarioResponde.text {
                //Caso o teclado decimal tenha uma virgula ao inves de um ponto ele faz a troca para o numero poder ser transformado em float
                let txtfixed = txt.replacingOccurrences(of: ",", with: ".")
                //Transforma o input de string para float
                if let calculo = Float(txtfixed){
                    // Realiza os calculos necessarios para defenir os impostos
                    let calculo1 = calculo * 0.1625
                    let calculo2 = calculo - calculo1
                    //Joga na tela o resultado das contas para o usuario poder ler
                    porcentagemPaga.text = "A porcentagem paga foi de 16,25%"
                    valorTotalDoImposto.text = "Valor total do imposto é \(String(format: "%.2f", calculo1)) reais"
                    valorDoProdutoSemImposto.text = "Valor pago sem imposto é \(String(format: "%.2f", calculo2)) reais"
                    
                    //Limpa o textfield para o usuario
                    usuarioResponde.text = ""
                    
                }
                
            }
        }
        if (paginaAtual.item == 1) {
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
        if (paginaAtual.item == 2) {
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
        if (paginaAtual.item == 3) {
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
    
    
    //Funcao chamada quando a tela carrega
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //define o delegate do textfield para ele mesmo
        usuarioResponde.delegate = self
        
        
        //  arredonda os cantos do botao de calculo
        botao_calcula.layer.cornerRadius = 10
        
        
        
        
        
        
        //escuta o programa para avisar quando esses eventos acontecem
        //Quando o teclado ira aparecer
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange), name:UIResponder.keyboardWillShowNotification, object: nil)
        //Quando o teclado ira desaparecer
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange), name:UIResponder.keyboardWillHideNotification, object: nil)
        //Quando o teclado ir mudar de frame
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange), name:UIResponder.keyboardWillChangeFrameNotification, object: nil)
        
        
    }
    
    
    //Funcao chamada quando a tela ira aparecer
    override func viewWillAppear(_ animated: Bool) {
        //Muda o titulo na navbar
        self.navigationController?.navigationBar.topItem?.title = "Calculadora"
    }
    
    
    //inicia as escutas das notificacoes
    deinit {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    
    //Funcao que esconde o teclado quando o usuario aperta retun no teclado
    @objc func returnpressed (){
        usuarioResponde.resignFirstResponder()
        
        
        
    }
    
    //Funcao que fecha o teclado quando o usuario toca em uma area fora do teclado
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        usuarioResponde.resignFirstResponder()
    }
    
    
    
    //Funcao que anima a tela quando o teclado eh aberto o fechado
    //Esta funcao eh chamada toda a vez que o avisar que os eventos que determinamos estiverem acontecendo
    @objc func keyboardWillChange(notification: Notification){
        
        //Funcao que pega o tamanho do teclado
        guard let keyboardRect = ( notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else{
            return
        }
        
        //Sobe a tela se o teclado estiver abrindo e desce a tela quando ele estiver fechando
        if (notification.name == UIResponder.keyboardWillShowNotification || notification.name == UIResponder.keyboardWillChangeFrameNotification ){
            view.frame.origin.y = -keyboardRect.height
        }else{
            view.frame.origin.y = 0
        }
        
    }
}
