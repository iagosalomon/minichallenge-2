//
//  Impostospage.swift
//  Test_minichallenge_2
//
//  Created by iago salomon on 08/05/19.
//  Copyright © 2019 iago salomon. All rights reserved.
//

import UIKit

class Impostospage: UIViewController {
    
    
    let impostos = ["ITBI","IPTU","IPVA","IRPF","ITCD"]
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
    
    
    let impostosindiretos = ["IOF","ICMS","ISS","IPI","II"]
    let impostosindiretosimage = ["IOF.png","ICMS.png","ISS.png","IPI.png","II.png"]

    let impostosindiretosoqueeh = ["É um imposto que você paga em cada operação financeira à crédito. Esse imposto é calculado através de uma alíquota que pode variar de banco para banco.",
                                   "É um imposto estadual, ou seja cada estado escolhe a alíquota, que é pago quando um produto desde eletrônicos ate chicletes (importados também) é movimentado de um estado para o outro para a comercialização dele.",
                                   "É um imposto municipal na qual é cobrado das empresas e pessoas autônomas pelos seus serviços prestados, desde hospitais como médicos até telemarketing.",
                                   "É um imposto federal que é cobrado sempre que um produto sai da fabrica para a comercialização ou direto no porto quando o produto é importado.",
                                   "É um imposto que você paga quando existe importação de produtos estrangeiros e entra no território nacional. "]
    
    
    let impostosindiretosQuando = ["- Comprando com o cartão  mas deixando a parcela vencer.\n- Pegando um empréstimo.\n- Usando o cheque especial.\n- Compra e venda de moedas estrangeiras.\n- Comprando um carro.",
                                   " - Venda e transferência de produtos;\n- Transporte entre municípios ou estados brasileiros, seja de bens, pessoas ou valores;\n- Importação de mercadorias, mesmo que para consumo próprio e não com o objetivo de revenda;\n- Prestação de serviço no exterior;\n- Serviços de telecomunicação.",
                                   "A forma de pagamento varia do tipo de serviços:\n\n- Autônomo: Só irá pagar quando fizer algum serviço, assim retira a nota fiscal na prefeitura já com o valor do imposto para pagar.\n- MEI: até 60.000 reais anuais irá pagar uma quanta mensal 51,85 reais. Onde esse valor vai modificando a cada ano pelo governo.",
                                   "- Quando é feito uma compra, por exemplo no atacadista de um vinho que é estrangeiro.\n- Quando compramos alguma bebida alcoólica.\n- Quando se compra um carro.",
                                   "- Quando compra algo estrangeiro com intuito de entrar dentro do Brasil e é taxado na alfandega com esse imposto.\n- Livros, revistas e jornais são alguns dos produtos que não serão taxados com esse imposto."]
    
    
    let impostosindiretosinformacoes = ["Para compras no exterior existe uma taxa que varia para cada banco mas para comprar com real convertido para dólar dentro do exterior fica em torno de 3%.",
                                        "A alíquota que é a porcentagem cobrada pode variar de estado para estado, mas esta entre 17% até 18%, exemplo um produto sai do paraná para são Paulo e custa 100,00 reais e alíquota 18% então ficaria: 100.18%=118,00.",
                                        "A isenção do ISS só acontece quando o serviço prestado será fora do território nacional e o valor pago é moeda estrangeira. É necessário ver o fato gerador de cada caso para a isenção desse imposto.\nQuando não pago é aplicado uma multa à juros mora por inadimplência.\nA alíquota do autônomo vai de 2% a 5% e é pago mensalmente ate o 10 dia subsequente.",
                                        "A alíquota pode ser fixa, variável ou zero que será multiplicado pelo valor do produto, você  consegue ver essa alíquota nas tabelas disponibilizadas pelo governo. Se o governo aumentar o IPI, não será a empresa que sairá perdendo, será os consumidores finais pois irá aumentar o valor dos produtos, desde caixa de relógios ate armas brancas.",
                                        "Fica isento do imposto quando o produto tem um prazo certo para sair do território nacional e é extrafiscal ou seja não espera entrar em vigor só no outro ano, se aumentar a alíquota um dia(hoje ela está com 60% do produto mais frete e seguro), no outro dia se fizer uma compra e ela for taxada na Alfândega ja será com a alíquota nova."]
    
    
    
    
    @IBOutlet weak var view2: UIView!
    
    let colors = [#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),#colorLiteral(red: 0.1760123372, green: 0.5056923628, blue: 1, alpha: 1)]

    var seletor: Int?
    var tipoImposto: Int?
    @IBOutlet weak var oqueeh: UILabel!
    @IBOutlet weak var oqueehdescricao: UILabel!
    @IBOutlet weak var quandopago: UILabel!
    @IBOutlet weak var quandopagodescricao: UILabel!
    @IBOutlet weak var informacoesTecnicas: UILabel!
    @IBOutlet weak var InformacoesTecnicasDescricao: UILabel!
    
    @IBOutlet weak var imagemImpostosPage: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!

    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
        if let _ = seletor {
            if (tipoImposto == 1){
            labelTitulo.text = "\(impostos[seletor!])"
            oqueehdescricao.text = "\(impostosoqueeh[seletor!])"
            quandopagodescricao.text = "\(impostosQuando[seletor!])"
            InformacoesTecnicasDescricao.text = "\(impostosInformacoes[seletor!])"
                view2.backgroundColor = colors[1]
                view.backgroundColor = colors[1]
                imagemImpostosPage.image = UIImage(named: impostosimage[seletor!])
                

                
            }else if (tipoImposto == 2){
               labelTitulo.text = "\(impostosindiretos[seletor!])"
               oqueehdescricao.text = "\(impostosindiretosoqueeh[seletor!])"
               quandopago.text = "Quando pago"
               quandopagodescricao.text = "\(impostosindiretosQuando[seletor!])"
               InformacoesTecnicasDescricao.text = "\(impostosindiretosinformacoes[seletor!])"
                view2.backgroundColor = colors[0]
                view.backgroundColor = colors[0]
                imagemImpostosPage.image = UIImage(named: impostosindiretosimage[seletor!])
            }
        }

        // Do any additional setup after loading the view.
    }
    

}
