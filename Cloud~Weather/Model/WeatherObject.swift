
import Foundation

struct WeatherObject {
    var cityName: String
    var temperature: Int
    var temperatureAsString: String {
        return String(temperature)
    }
}
