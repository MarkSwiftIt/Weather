import Foundation
import WeatherKit
import CoreLocation

final class WeatherManager {
    static let shared = WeatherManager()
    
    let service = WeatherService.shared
    
    private init() {}
    
    public func getWeather(for location: CLLocation, completion: @escaping () -> Void) {
        Task {
            do {
                let result = try await service.weather(for: location)
                
                print("Current: \(result.currentWeather)")
                
                completion()
            } catch {
                print(String(describing: error))
            }
        }
    }
}
