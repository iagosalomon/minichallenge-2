//
//  Impostospage.swift
//  Test_minichallenge_2
//
//  Created by iago salomon on 08/05/19.
//  Copyright © 2019 iago salomon. All rights reserved.
//


//tela dos impostos
import UIKit

class Impostospage: UIViewController {
    
    // Informacoes dos impostos diretos
    
    let impostos = ["ITBI","IPTU","IPVA","IRPF","ITCD"]
    let impostosExtenso = ["Imposto sobre a transmissão de bens imóveis","Imposto Predial e Territorial Urbano","Imposto sobre a Propriedade de Veículos Automotores","Imposto de Renda de Pessoa Física","Imposto sobre Transmissão Causa Mortis e Doação de Quaisquer Bens ou Direitos"]
    let impostosimage = ["ITBI.png","IPTU.png","ipva.png","IRPF.png","ITCD.png"]
    let impostosoqueeh = ["É um imposto cobrado pelas Prefeituras Municipais para transferir o imóvel para o novo proprietário.",
                          "É um imposto cobrado de quem tem um imóvel urbano. Isto é, casa, apartamento, sala comercial ou qualquer outro tipo de propriedade em uma região urbanizada.",
                          "É um imposto estadual cobrado anualmente de quem tem um veículo, como carro e moto. Ele não incide sobre transportes que não circulam em terra, como barcos e lanchas, por exemplo.",
                          "É um tributo cobrado anualmente pelo governo federal sobre os ganhos de pessoas. Os cidadãos com renda maior pagam mais impostos, enquanto aqueles com renda menor pagam menos.Portanto, o IRPF é um valor anual descontado sobre os rendimentos dos trabalhadores",
                          "É um imposto que deve ser pago em casos de doação de bens, testamento ou inventário. Isto é, sempre que houver transmissão de bens por causa mortis ou doação, o imposto é obrigatório."]
    
    
    let impostosQuando = ["Toda vez que um imóvel tiver que ser transferido de uma pessoa para outro, esse imposto será cobrado, e só depois do seu acerto é que a transmissão poderá ser oficializada.",
                          "O IPTU pode ser pago à vista ou parcelado. Cada cidade pode definir se haverá desconto pagando à vista e até mesmo o percentual do desconto que vai oferecer no IPTU. Para pagar o boleto, basta você acessar o site da prefeitura da sua cidade ou da Secretaria da Fazenda do município. Em geral, logo na primeira página desses sites tem um link para IPTU.",
                          "- agência bancária credenciada com o número do RENAVAM (Registro Nacional de Veículo Automotor). \n- Nos terminais de autoatendimento;\n- Nos guichês de caixa;\n- Pela internet;\n- Débito agendado; \n- Outros canais oferecidos pela instituição bancária para fazer o pagamento.\n- casas lotéricas.\n-  site do IPVA de São Paulo, digitando o número do Renavam e placa do veículo.",
                          "A Receita oferece um programa para você preencher os campos e áreas específicas com suas informações. Assim, é gerado um documento que é a sua declaração de todas as grandes ações financeiras do ano. \nPara o pagamento do Imposto de Renda Pessoa Física, basta acessar o site da Receita Federal e baixar o programa. \n\nTambém é possível contratar um Contador para realizar o teu IRPF.",
                          "Para saber que o percentual no seu Estado, consulte a SEFAZ sobre graduação da aliquota do ITCD."]
    
    
    
    let impostosInformacoes = ["A alíquota do ITBI varia de cidade para cidade e com o valor do imóvel, podendo chegar até 3% sobre a base de cálculo da transação.",
                               "- É um imposto cobrado pelas prefeituras. Ou seja, cada cidade escolhe os critérios para a cobrança.\n- O valor do IPTU varia conforme a avaliação do imóvel.",
                               "O valor a ser cobrado no IPVA e o desconto oferecido variam em cada Estado. Muitos governos costumam dar descontos de até 3% no pagamento do IPVA à vista.  Sendo assim, é uma oportunidade de pagar menos imposto.",
                               "Quem recebeu rendimentos tributáveis em 2018 em valores superiores a R$ 28.559,70 ou ganhou mais de 40 mil reais em rendimentos isentos, não tributáveis ou tributados na fonte no ano, a exemplo de indenizações trabalhistas ou rendimento de poupança, devem pagar o Imposto de Renda 2019.",
                               "Os valores variam de acordo com o estado da Fedearação, geralmente ficando em torno de 5%"]
    
    
    
    
    
    
    
    
    
    
    //-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    
    //Informacoes dos impostos indiretos
    
    let impostosindiretosExtenso = ["Impostos sobre operações financeiras","Imposto sobre Circulação de Mercadorias e Serviços","Impostos sobre serviços","imposto sobre os produtos industrializados","Imposto de importação"]
    let impostosindiretos = ["IOF","ICMS","ISS","IPI","II"]
    let impostosindiretosimage = ["IOF.png","ICMS.png","ISS.png","IPI.png","II.png"]
    
    let impostosindiretosoqueeh = ["É um imposto que você paga em cada operação financeira à crédito. Esse imposto é calculado por meio de uma alíquota que pode variar de banco para banco.",
                                   "É um imposto estadual, ou seja, cada estado escolhe a alíquota, que é pago quando um produto desde eletrônicos ate chicletes (importados também) é movimentado de um estado para o outro para a comercialização dele.",
                                   "É um imposto municipal, na qual é cobrado das empresas e pessoas autônomas pelos seus serviços prestados, desde médicos até telemarketing.",
                                   "É um imposto federal que é cobrado sempre que um produto sai da fábrica para a comercialização ou direto no porto quando o produto é importado.",
                                   "É um imposto que você paga quando existe importação de produtos estrangeiros e entra no território nacional."]
    
    
    let impostosindiretosQuando = ["- Comprando com o cartão  mas deixando a parcela vencer.\n- Pegando um empréstimo.\n- Usando o cheque especial.\n- Compra e venda de moedas estrangeiras.\n- Comprando um carro.",
                                   " - Venda e transferência de produtos;\n- Transporte entre municípios ou estados brasileiros, seja de bens, pessoas ou valores;\n- Importação de mercadorias, mesmo que para consumo próprio e não com o objetivo de revenda;\n- Prestação de serviço no exterior;\n- Serviços de telecomunicação.",
                                   "A forma de pagamento varia conforme o tipo de serviço:\n\n- Autônomo: Só irá pagar quando fizer algum serviço. Assim, retira a nota fiscal na Prefeitura já com o valor do imposto para pagar.\n- MEI: até 60.000 reais anuais irá pagar uma quanta mensal 51,85 reais, tal que esse valor é modificado a cada ano pelo governo.",
                                   "- Quando é feito uma compra, por exemplo no atacadista de um vinho que é estrangeiro.\n- Quando compramos alguma bebida alcoólica.\n- Quando se compra um carro.",
                                   "- Quando compra algo estrangeiro com o intuito de entrar dentro do Brasil e é taxado na alfândega com esse imposto.\n- Livros, revistas e jornais são alguns dos produtos que não serão taxados com esse imposto."]
    
    let impostosindiretosinformacoes = ["Para compras no exterior, há uma taxa que varia para cada banco; mas para comprar real e convertê-lo para dólar no exterior fica em torno de 3%.",
                                        "A alíquota pode variar de estado para estado, mas está entre 17% e 18%. Por exemplo, um produto sai do Paraná para São Paulo e custa 100,00 reais. Tendo-se em vista que a alíquota equivale a 18%, ficaria: 100.18% = 118,00.",
                                        "A isenção do ISS só acontece quando o serviço prestado ocorre fora do território nacional e é utilizada a moeda estrangeira. É necessário ver o fato gerador de cada caso para a isenção desse imposto.\nQuando não pago é aplicado uma multa à juros mora por inadimplência.\nA alíquota do autônomo vai de 2% a 5% e é pago mensalmente até o 10 dia subsequente.",
                                        "A alíquota pode ser fixa, variável ou zero que será multiplicado pelo valor do produto. Você  consegue ver essa alíquota nas tabelas disponibilizadas pelo governo. Se o governo aumentar o IPI, não será a empresa que sairá perdendo, mas sim os consumidores finais. Isto porque irá aumentar o valor dos produtos, desde caixa de relógios até armas brancas.",
                                        "Fica isento do imposto quando o produto tem um prazo certo para sair do território nacional e é extrafiscal. Ou seja, não espera entrar em vigor só no outro ano, mesmo se aumentar a alíquota um dia. No outro dia, se você fizer uma compra e ela for taxada na Alfândega, já será com a alíquota nova."]

    //-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    
    //seletor da view dentro da scrollview
    @IBOutlet weak var view2: UIView!
    
    
    //cores usadas nos cards
    let colors = [#colorLiteral(red: 0.1882352941, green: 0.8078431373, blue: 0.5333333333, alpha: 1),#colorLiteral(red: 0.1529411765, green: 0.6274509804, blue: 0.6196078431, alpha: 1)]
    
    //Variavel que ira ser definida pelo segue da viewControl
    var seletor: Int?
    
    //  Variavel do tipo de imposto
    var tipoImposto: Int?
    
    
    //Todas as labels e a imagem da tela
    @IBOutlet weak var oqueeh: UILabel!
    @IBOutlet weak var oqueehdescricao: UILabel!
    @IBOutlet weak var quandopago: UILabel!
    @IBOutlet weak var quandopagodescricao: UILabel!
    @IBOutlet weak var informacoesTecnicas: UILabel!
    @IBOutlet weak var InformacoesTecnicasDescricao: UILabel!
    
    @IBOutlet weak var imagemImpostosPage: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    
    
    
    //Funcao chamada quando a tela carrega
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
        
        
        if let _ = seletor {
            
            
            // Criador da tela se for Imposto direto
            if (tipoImposto == 1){
                labelTitulo.text = "\(impostosExtenso[seletor!])"
                oqueehdescricao.text = "\(impostosoqueeh[seletor!])"
                quandopagodescricao.text = "\(impostosQuando[seletor!])"
                InformacoesTecnicasDescricao.text = "\(impostosInformacoes[seletor!])"
                
                view2.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                imagemImpostosPage.image = UIImage(named: impostosimage[seletor!])
                self.navigationItem.title = "\(impostos[seletor!])"
                self.navigationController?.navigationBar.barTintColor = colors[1]
                
                
                
                
                // Criador da tela se for impostto indireto
            }else if (tipoImposto == 2){
                
                
                labelTitulo.text = "\(impostosindiretosExtenso[seletor!])"
                oqueehdescricao.text = "\(impostosindiretosoqueeh[seletor!])"
                quandopago.text = "Quando pago"
                quandopagodescricao.text = "\(impostosindiretosQuando[seletor!])"
                InformacoesTecnicasDescricao.text = "\(impostosindiretosinformacoes[seletor!])"
                
                imagemImpostosPage.image = UIImage(named: impostosindiretosimage[seletor!])
                self.navigationController?.navigationBar.topItem?.title = "\(impostos[seletor!])"
                view2.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                self.navigationItem.title = "\(impostos[seletor!])"
                self.navigationController?.navigationBar.barTintColor = colors[0]
            }
        }
        
        // Do any additional setup after loading the view.
        
    }
    
    // fucao para setar a nav bar branca quando sair da tela
    // Essa funcao eh chamada toda a vez que a tela for desaparecer
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    
}
