import Foundation

struct WeatherService {
    private var apiKey = "061eff74fd9cd20dddec81325f8e0493"
    private var baseURL = "http://api.weatherstack.com/"
    
    func getCurrentWeather(for city: String) {
        let urlString = "\(baseURL)current?access_key=\(apiKey)&query=\(city)&units=f"
        
        if let validURL = URL(string: urlString) {
            print(validURL)
        }
    }
    
}


