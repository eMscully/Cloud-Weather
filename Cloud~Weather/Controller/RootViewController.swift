import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true 
    }
    

    @IBAction func goPressed(_ sender: UIButton) {
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

/*
 API key: 061eff74fd9cd20dddec81325f8e0493
base URL : http://api.weatherstack.com/
 */
