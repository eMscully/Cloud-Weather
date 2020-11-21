import UIKit

class RootViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
   
    let weatherService = WeatherDataService()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true
        
     
       
        
    }
    

    @IBAction func goPressed(_ sender: UIButton) {
        if let city = searchTextField.text {
            weatherService.getCurrentWeather(for: city)
        }
        performSegue(withIdentifier: "goSegue", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


