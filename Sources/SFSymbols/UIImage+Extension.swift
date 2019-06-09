import UIKit

@available(iOS 13.0, watchOS 6, tvOS 13, *)
public extension UIImage {
    convenience init(systemSymbol: SFSymbol) {
        self.init(systemName: systemSymbol.rawValue)!
    }

    convenience init(systemSymbol: SFSymbol, withConfiguration: UIImage.SymbolConfiguration) {
        self.init(systemName: systemSymbol.rawValue, withConfiguration: withConfiguration)!
    }

    convenience init(systemSymbol: SFSymbol, pointSize: CGFloat) {
        let config = UIImage.SymbolConfiguration(pointSize: pointSize)
        self.init(systemSymbol: systemSymbol, withConfiguration: config)
    }

    convenience init(systemSymbol: SFSymbol, weight: UIImage.SymbolWeight) {
        let config = UIImage.SymbolConfiguration(weight: weight)
        self.init(systemSymbol: systemSymbol, withConfiguration: config)
    }

    convenience init(systemSymbol: SFSymbol, scale: UIImage.SymbolScale) {
        let config = UIImage.SymbolConfiguration(scale: scale)
        self.init(systemSymbol: systemSymbol, withConfiguration: config)
    }

    convenience init(systemSymbol: SFSymbol, pointSize: CGFloat, weight: UIImage.SymbolWeight) {
        let config = UIImage.SymbolConfiguration(pointSize: pointSize, weight: weight)
        self.init(systemSymbol: systemSymbol, withConfiguration: config)
    }

    convenience init(systemSymbol: SFSymbol, pointSize: CGFloat, weight: UIImage.SymbolWeight, scale: UIImage.SymbolScale) {
        let config = UIImage.SymbolConfiguration(pointSize: pointSize, weight: weight, scale: scale)
        self.init(systemSymbol: systemSymbol, withConfiguration: config)
    }

    convenience init(systemSymbol: SFSymbol, compatibleWith traitCollection: UITraitCollection?) {
        self.init(systemName: systemSymbol.rawValue, compatibleWith: traitCollection)!
    }

    convenience init(systemSymbol: SFSymbol, withConfiguration configuration: UIImage.Configuration?) {
        self.init(systemName: systemSymbol.rawValue, withConfiguration: configuration)!
    }
}
