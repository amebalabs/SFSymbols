import UIKit

@available(iOS 13.0,watchOS 6,tvOS 13, *)
public extension UIImage {
    convenience init(systemSymbol: SFSymbol) {
        self.init(systemName: systemSymbol.rawValue)!
    }
}
