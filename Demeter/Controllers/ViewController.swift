import UIKit

class ViewController: UIViewController {
    var searching = false
    var searchedSigno = [SignoData]()
    var signoList = [SignoData]()
    let searchController = UISearchController(searchResultsController: nil)
    
    @IBOutlet var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillData()
        
        configureSearchController()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func configureSearchController(){
        searchController.loadViewIfNeeded()
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.enablesReturnKeyAutomatically = false
        searchController.searchBar.returnKeyType = UIReturnKeyType.done
        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
        definesPresentationContext = true
        searchController.searchBar.placeholder = "Procurar signo"
        
       }
    
    private func fillData(){
        let signo1 = SignoData(sImage: "aries", sName: "Áries", pTitulo: "Espada de São Jorge", pImage: "plantaAries", pText: "Trata-se de uma planta imponente e afiada como um ariano. A espada-de-são-jorge tem o poder de espantar o mau-olhado e deixar fluir as boas energias na casa.Por ser uma planta ligada a proteção é importante ser colocada próximo à porta principal do imóvel oferece a proteção necessária que o signo requer.A propagação da espada de São Jorge é feita ou pela separação dos rizomas ou por estaquias com as folhas.\n\nUm fator a se considerar é a alta toxicidade da planta que, caso seja ingerida, pode causar diversos males à saúde.", pSol: "Sol à sombra pracial", pAgua: "Duas vez por semana. Reduzir a rega no inverno", pFertilizante: "Uma vez a cada 2-3 semanas \n")
        signoList.append(signo1)
        searchedSigno.append(signo1)
        
        let signo2 = SignoData(sImage: "touro", sName: "Touro", pTitulo: "Jade", pImage: "plantaTouro", pText: "Essa planta é um tipo de suculenta e também chamada como árvore da fortuna ou árvore da felicidade. A planta jade corresponde à serenidade que os nativos desse signo procuram, pois ela cresce devagar e é bem fácil de cuidar. \nCuidado ao deixá-la fora de casa em ambientes abertos, pois a jade não tolera ventos e geadas. \nÉ extremamente raro a planta de jade florescer no Brasil, pois, ela nativa da África do Sul, poucos lugares atendem as necessidades climáticas para o florescimento", pSol: "Sol pleno, meia sombra", pAgua: "Tolerante a seca, água quando o soloestá seco", pFertilizante: "Mensal única na primavera e outono")
        signoList.append(signo2)
        searchedSigno.append(signo2)
        
        let signo3 = SignoData(sImage: "gemeos", sName: "Gêmeos", pTitulo: "Filodendro", pImage: "plantaGemeos", pText: "Com folhas sinuosas em forma de coração, o  filodendro ajuda a movimentar a energia dos ambientes com suavidade. A planta se adapta em qualquer ambiente, com diferentes condições de iluminação. Isso remete a personalidade adaptativa dos geminianos. O plantio pode ser em qualquer tipo de solo, desde que seja bem aerado e não acumule água em excesso. É uma planta que gosta da umidade e de calor, não suportando geada e ventos fortes.", pSol: "meia sombra, luz difusa ", pAgua: "Regularmente", pFertilizante: "A cada 2 meses")
        signoList.append(signo3)
        searchedSigno.append(signo3)
        
        let signo4 = SignoData(sImage: "cancer", sName: "Câncer", pTitulo: "Lírio-da-paz", pImage: "plantaCancer", pText: "Uma espécie filtra energias ruins que chegam perto, assim como os cancerianos fazem. Embora ao primeiro contato pareça uma planta delicada e frágil você enxerga como são fortes e bonitas. O que remete a personalidade dos nativos desse signo. O Lírio da paz é considerado uma planta mística que tem o poder de sugar as energias negativas dos ambientes e das pessoas. Um fator a se considerar é a alta toxicidade da planta podendo causa problemas respiratórios caso seja ingerida.", pSol: "Sombra", pAgua: "2 a 3 vezes na semana", pFertilizante: "Adubar durante os meses mais quentes do ano")
        signoList.append(signo4)
        searchedSigno.append(signo4)
        
        let signo5 = SignoData(sImage: "leao", sName: "Leão", pTitulo: "Bromélia", pImage: "plantaLeao", pText: "Alegres e carismáticos, os leoninos chamam a atenção por onde passam, assim como as bromélias.  É uma espécie tropical que prospera em climas quentes, complementando a personalidade ardente de leão. Conotam um lado espiritual mais voltado à vidência, intuição e mediunidade. E suas flores pussuem um significado forte, voltado sempre para a renovação e a vitalidade mental. É preciso saber que as bromélias são plantas sensíveis a inseticidas e fungicidas.", pSol: "Sol pracial a sombra parcial", pAgua: "Necessidades média de água, a rega deve ser feita toda semana", pFertilizante: "Uma vez a cada 2-3 meses na estação de crescimento")
        signoList.append(signo5)
        searchedSigno.append(signo5)
        
        let signo6 = SignoData(sImage: "virgem", sName: "Virgem", pTitulo: "Azaleia", pImage: "plantaVirgem", pText: "Por ser um signo ligado ao perfeccionismo e aos detalhes, talvez seja uma das poucas pessoas que conseguem dar conta das delicadas e trabalhosas azaleias. Mas, apesar de ser uma planta difícil de cuidar, sua beleza natural com certeza compensará o esforço. São cheias de significados que dependendo de suas cores, vão desde amor à natureza até demonstração de romance. Gostam de solos ácidos e prefira usar água destilada ou água da chuva , as azaleias não se dão muito bem com água de torneira.", pSol: "Sol ou meia sombra", pAgua: "Água regularmente, mas sem acúmulo de água", pFertilizante: "Fertilizada na primavera e final de verão ")
        signoList.append(signo6)
        searchedSigno.append(signo6)
        
        let signo7 = SignoData(sImage: "libra", sName: "Libra", pTitulo: "Costela-de-adão", pImage: "plantaLibra", pText: "Com suas folhas divididas simetricamente falam diretamente da necessidade de equilíbrio e harmonia em todas as partes da vida de um libriano, tendo correspondência com o signo de forma simbólica e literal. \n É uma planta que acredita-se que  traga boa sorte, boas noticias e esperança, como também também utilizada para melhorar os vínculos afetivos com parentes complicados.Infelizmente, se você tiver animais de estimação em casa, fique longe da costela-de-adão.", pSol: "Sombra", pAgua: "Mantenha úmido, mas sem acumulos de água", pFertilizante: "Uma vez por mês durante o período de crescimento")
        signoList.append(signo7)
        searchedSigno.append(signo7)
        
        let signo8 = SignoData(sImage: "escorpiao", sName: "Escorpião", pTitulo: "Roseira", pImage: "plantaEscorpiao", pText: "As rosas são a expressão mais romântica da mãe terra, liberando aromas sensuais assim como o signo de escorpião, sem falar dos espinhos... A rosa é símbolo do amor e o seu desabrochar simboliza o segredo e o mistério da vida. O solo rico em húmus e, preferencialmente, argiloso. A roseira exige temperaturas entre 17º a 26ºC, onde a ocorrência de temperaturas altas pode deixar as flores pequenas e pálidas, enquanto as baixas atrasam o crescimento e florescimento.", pSol: "Sol pleno a sol parcial", pAgua: "Necessidades médias de água, a rega deve ser feita toda semana", pFertilizante: "Uma vez por mes durante a estação de crescimento")
        signoList.append(signo8)
        searchedSigno.append(signo8)
        
        let signo9 = SignoData(sImage: "sagitario", sName: "Sagitário", pTitulo: "Cactos", pImage: "plantaSagitario", pText: "Os cactos obrevivem por anos com poucos cuidados e podem ser levados para qualquer lugar, assim como os sagitarianos com seu espírito de aventura e de liberdade. São como guardiões afastando a inveja, encantamentos maliciosos, vibrações ruins de tristeza, desmotivação e contendas. O replantio pode ser feito caso o desenvolvimento esteja lento, sinal que as raízes não têm espaço para se desenvolver ou que o substrato está esgotado e deve ser reposto.", pSol: "Sol pleno", pAgua: "Resistente a seca. Deixar o solo secar entre as regas", pFertilizante: "Uma vez a cada três meses no período de crescimento e floração ")
        signoList.append(signo9)
        searchedSigno.append(signo9)
        
        let signo10 = SignoData(sImage: "capricornio", sName: "Capricónio", pTitulo: "Bonsai", pImage: "plantaCapricornio", pText:"Além de ser linda para a decoração, é uma planta que necessita de dedicação e esforço. Coisa que não falta para os nativos desse signo. Nas culturas orientais, as árvores têm como principal característica simbolizar uma relação única entre o homem e a natureza, que juntos são um elemento só no universo. Se o seu bonsai mora dentro de casa você deverá, todos os dias, expô-lo ao sol e ao ar livre por algum tempo.", pSol: "Sol pleno", pAgua: "A cada 1 dia", pFertilizante: "A cada duas semanas")
        signoList.append(signo10)
        searchedSigno.append(signo10)
        
        let signo11 = SignoData(sImage: "aquario", sName: "Aquário", pTitulo: "Samambaia", pImage: "plantaAquario", pText:"A samambaia possui uma folhagem cheia e ramifica-se em várias direções, algo bem claro na natureza de um aquariano. é uma ótima opção, sua folhagem  pode aflorar o sentimento de amor pela natureza que existe nos aquarianos. A Samambaia é uma planta que estimula a área da prosperidade e, devido a sua característica de crescer para baixo, deve ser usada com sabedoria. Não gostam de locais onde há ventos constantes, pois o vento desidrata a planta mais rápido que o sol.", pSol: "Sombra pracial", pAgua: "Manter úmido, mas sem acúmulo de água", pFertilizante: "uma vez a cada 7 ou 15 dias")
        signoList.append(signo11)
        searchedSigno.append(signo11)
        
        let signo12 = SignoData(sImage: "peixes", sName: "Peixes", pTitulo: "Clorofito", pImage: "plantaPeixes", pText: "O clorofito é lindo e consegue sobreviver usando a empatia, assim como os piscianos, dessa forma o clorifito sempre se programa para não roubar a luz solar de outras plantas. Por ser um filtro natural, ele também acaba envolvendo as energias negativas. A negatividade esvai-se e a positividade toma seu lugar. O clorofito está entre as 10 plantas mais fáceis de cuidar do mundo. Atente-se sempre sobre as pragas. A mais comum para o clorofito são as cochonilhas", pSol: "Sombra pracial", pAgua: "Manter úmido, mas sem acúmulo de água", pFertilizante: "2 em 2 semanas")
        signoList.append(signo12)
        searchedSigno.append(signo12)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource,UISearchResultsUpdating,UISearchBarDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if searching {
                    return searchedSigno.count
                }
                
                else{
                    return signoList.count
              }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        
        if searching {
            cell.myImage.image = UIImage(named: searchedSigno[indexPath.row].signoImage)
            cell.myLabel.text = searchedSigno[indexPath.row].signoName
        }
        
        else {
            cell.myImage.image = UIImage(named: signoList[indexPath.row].signoImage)
            cell.myLabel.text = signoList[indexPath.row].signoName
        }
        return cell
     }
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchText = searchController.searchBar.text!
        if !searchText.isEmpty{
            searching = true
            searchedSigno.removeAll()
            for signo in signoList {
                if signo.signoName.lowercased().contains(searchText.lowercased()){
                    searchedSigno.append(signo)
                }
             }
         }
        
        else{
            searching = false
            searchedSigno.removeAll()
            searchedSigno = signoList
        }
        myCollectionView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
          searching = false
          searchedSigno.removeAll()
          myCollectionView.reloadData()
      }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! PlantaViewController
        viewController.text = "oiiii"
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = mainStoryBoard.instantiateViewController(withIdentifier: "PlantaViewController") as! PlantaViewController
        let backItem = UIBarButtonItem()
            backItem.title = searchedSigno[indexPath.row].signoName
            navigationItem.backBarButtonItem = backItem
        viewController.text = searchedSigno[indexPath.row].plantaText
        self.navigationController?.pushViewController(viewController, animated: true)
        viewController.pTitle = searchedSigno[indexPath.row].plantaTitulo
        viewController.theImagePassed = UIImage(named: searchedSigno[indexPath.row].plantaImage) ?? UIImage()
        viewController.sol = searchedSigno[indexPath.row].textSol
        viewController.agua = searchedSigno[indexPath.row].textAgua
        viewController.fertilizante = searchedSigno[indexPath.row].tetxFertilizante
    }
    
}

