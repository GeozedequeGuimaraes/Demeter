import Foundation
class SignoData {
    var signoImage: String
    var signoName: String
    var plantaTitulo: String
    var plantaImage: String
    var plantaText: String
    var textSol: String
    var textAgua: String
    var tetxFertilizante: String
    
    
    init(sImage:String,
         sName:String,
         pTitulo: String,
         pImage: String,
         pText: String,
         pSol: String,
         pAgua: String,
         pFertilizante: String)
    {
        signoImage = sImage
        signoName = sName
        plantaTitulo = pTitulo
        plantaImage = pImage
        plantaText = pText
        textSol = pSol
        textAgua = pAgua
        tetxFertilizante = pFertilizante
    }
}
