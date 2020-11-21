import Foundation

struct WeatherDataService {
    private var apiKey = "061eff74fd9cd20dddec81325f8e0493"
    private var baseURL = "http://api.weatherstack.com/"
    
   
    func getCurrentWeather(for city: String) {
        let urlString = "\(baseURL)current?access_key=\(apiKey)&query=\(city)&units=f"
        
        guard let url = URL(string: urlString) else {return}
        
        let urlRequest = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("API Request error: \(error.localizedDescription)")
            }
            
            if let validData = data {
                let decoder = JSONDecoder()
                
                do {
                    let weatherData = try decoder.decode(WeatherData.self, from: validData)
                    print(weatherData)
                    
            
                } catch {
                    print(error.localizedDescription)
                }

        }
        }.resume()
    
}


}
