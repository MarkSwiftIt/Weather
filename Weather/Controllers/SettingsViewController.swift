import UIKit

class SettingsViewController: UIViewController {
    
    let primaryView: SettingsView = {
        let view = SettingsView()
        let viewModel = SettingsViewViewModel(options: SettingsOpen.allCases)
        view.configure(with: viewModel)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
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
