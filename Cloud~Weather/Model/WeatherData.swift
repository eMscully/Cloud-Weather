import Foundation

struct WeatherData: Codable {
    let location: Location
    let current: Current
}

struct Location: Codable {
    let name: String
}

struct Current: Codable {
    let temperature: Int
    let weather_descriptions: [String]
    let feelslike: Int
}
