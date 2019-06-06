import XCTest
@testable import SFSymbols

@available(iOS 13.0,watchOS 6,tvOS 13, *)
final class SFSymbolsTests: XCTestCase {
    func testAllCases() {
        XCTAssert(SFSymbol.allCases.compactMap{UIImage(systemSymbol: $0)}.count == SFSymbol.allCases.count)
    }

    static var allTests = [
        ("testExample", testAllCases),
    ]
}
