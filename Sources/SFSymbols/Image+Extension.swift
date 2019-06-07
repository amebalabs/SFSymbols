import SwiftUI

@available(iOS 13.0,watchOS 6,tvOS 13, *)
extension Image {
    init(systemSymbol: SFSymbol) {
        self.init(uiImage: UIImage(systemSymbol: systemSymbol))
    }
}
