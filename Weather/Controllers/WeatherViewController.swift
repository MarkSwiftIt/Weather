import UIKit

class WeatherViewController: UIViewController {

    let primaryView = CurrentWeatherView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        getLocation()
    }

    private func getLocation() {
        LocationManager.shared.getCurrentLocation { location in
            print(String(describing: location))
            
            WeatherManager.shared.getWeather(for: location) {
                 
            }
        }
    }
    
    private func setUpView() {
        view.backgroundColor = .systemBackground

        view.addSubview(primaryView)
        NSLayoutConstraint.activate([
            primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            primaryView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            primaryView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }    
}

