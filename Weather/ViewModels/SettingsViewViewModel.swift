import Foundation

struct SettingsViewViewModel {
    let options : [SettingsOpen]
}

enum SettingsOpen: CaseIterable {
    case upgrade
    case privacyPolicy
    case terms
    case contact
    case getHelp
    case rateApp
    
    var title: String{
        switch self {
        case .upgrade:
            return "Upgrade to Pro"
        case .privacyPolicy:
            return "Privacy Policy"
        case .terms:
            return "Terms of Use"
        case .contact:
            return "Contact Us"
        case .getHelp:
            return "Get Help"
        case .rateApp:
            return "Rate App!"
        }
    }
}
