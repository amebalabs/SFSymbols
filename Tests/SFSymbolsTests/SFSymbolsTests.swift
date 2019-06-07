import XCTest
import SwiftUI

@testable import SFSymbols

@available(iOS 13.0,watchOS 6,tvOS 13, *)
final class SFSymbolsTests: XCTestCase {
    func testUIImage() {
        XCTAssert(SFSymbol.allCases.compactMap{UIImage(systemSymbol: $0)}.count == SFSymbol.allCases.count)
    }

    func testImage() {
        XCTAssert(SFSymbol.allCases.compactMap{Image(systemSymbol: $0)}.count == SFSymbol.allCases.count)
    }
}
