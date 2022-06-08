import UIKit

class PlantaViewController: UIViewController {
    var text: String = ""
    var pTitle: String = ""
    var theImagePassed = UIImage()
    var sol: String = ""
    var agua: String = ""
    var fertilizante: String = ""
    
    @IBOutlet var textPlanta: UIImageView!
    @IBOutlet var plantaFertilizante: UILabel!
    @IBOutlet var plantaAgua: UILabel!
    @IBOutlet var plantaSol: UILabel!
    @IBOutlet var plantaImage: UIImageView!
    @IBOutlet var planta: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        plantaAgua.sizeToFit()
        planta.text = text
        self.title=pTitle
        plantaImage.image = theImagePassed
        plantaSol.text = sol
        plantaAgua.text = agua
        plantaFertilizante.text = fertilizante
        
    }
    

   

}
