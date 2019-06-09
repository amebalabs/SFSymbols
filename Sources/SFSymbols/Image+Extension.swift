import SwiftUI

@available(iOS 13.0, watchOS 6, tvOS 13, *)
public extension Image {
    init(systemSymbol: SFSymbol) {
        self.init(uiImage: UIImage(systemSymbol: systemSymbol))
    }

    init(systemSymbol: SFSymbol, withConfiguration: UIImage.SymbolConfiguration) {
        self.init(uiImage: UIImage(systemSymbol: systemSymbol, withConfiguration: withConfiguration))
    }

    init(systemSymbol: SFSymbol, pointSize: CGFloat) {
        let config = UIImage.SymbolConfiguration(pointSize: pointSize)
        self.init(systemSymbol: systemSymbol, withConfiguration: config)
    }

    init(systemSymbol: SFSymbol, weight: UIImage.SymbolWeight) {
        let config = UIImage.SymbolConfiguration(weight: weight)
        self.init(systemSymbol: systemSymbol, withConfiguration: config)
    }

    init(systemSymbol: SFSymbol, scale: UIImage.SymbolScale) {
        let config = UIImage.SymbolConfiguration(scale: scale)
        self.init(systemSymbol: systemSymbol, withConfiguration: config)
    }

    init(systemSymbol: SFSymbol, pointSize: CGFloat, weight: UIImage.SymbolWeight) {
        let config = UIImage.SymbolConfiguration(pointSize: pointSize, weight: weight)
        self.init(systemSymbol: systemSymbol, withConfiguration: config)
    }

    init(systemSymbol: SFSymbol, pointSize: CGFloat, weight: UIImage.SymbolWeight, scale: UIImage.SymbolScale) {
        let config = UIImage.SymbolConfiguration(pointSize: pointSize, weight: weight, scale: scale)
        self.init(systemSymbol: systemSymbol, withConfiguration: config)
    }
}
