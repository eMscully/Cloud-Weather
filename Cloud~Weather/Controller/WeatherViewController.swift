import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var weatherConditionSymbol: UIImageView!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var weatherBackgroundImage: UIImageView!
    
   
    var city: String!


    override func viewDidLoad() {
        super.viewDidLoad()
       
        cityLabel.text = city
        

        
    }


}

