import UIKit

class RootViewController: UIViewController, WeatherDataServiceDelegate {

    
    
    @IBOutlet weak var searchTextField: UITextField!
   
    var weatherService = WeatherDataService()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true
        weatherService.delegate = self
        
    }
    
    func updateWeather(weather: WeatherObject) {
      
        
    
    }
    

    @IBAction func goPressed(_ sender: UIButton) {
        if let city = searchTextField.text {
            weatherService.getCurrentWeather(for: city)
            
            
        }
        performSegue(withIdentifier: "goSegue", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let weatherVC = segue.destination as? WeatherViewController {
            weatherVC.city = searchTextField.text
            
            
        }
    }

}


