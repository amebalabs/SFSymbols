import XCTest
import SwiftUI

@testable import SFSymbols

@available(iOS 13.0,watchOS 6,tvOS 13, *)
final class SFSymbolsTests: XCTestCase {
    let weights: [UIImage.SymbolWeight] = [.black,.bold,.heavy,.light,.medium,.regular,.semibold,.thin]
    let scales: [UIImage.SymbolScale] = [.default,.large,.medium,.small,.unspecified]

    func testUIImage() {
        XCTAssert(SFSymbol.allCases.compactMap{UIImage(systemSymbol: $0)}.count == SFSymbol.allCases.count)

        weights.forEach { weight in
            XCTAssert(SFSymbol.allCases.compactMap{UIImage(systemSymbol: $0, weight: weight)}.count == SFSymbol.allCases.count)
        }

        scales.forEach { scale in
            XCTAssert(SFSymbol.allCases.compactMap{UIImage(systemSymbol: $0, scale: scale)}.count == SFSymbol.allCases.count)
        }

        weights.forEach { weight in
            scales.forEach { scale in
                XCTAssert(SFSymbol.allCases.compactMap{UIImage(systemSymbol: $0, pointSize: 24, weight: weight, scale: scale)}.count == SFSymbol.allCases.count)
            }
        }
    }

    func testImage() {
        XCTAssert(SFSymbol.allCases.compactMap{Image(systemSymbol: $0)}.count == SFSymbol.allCases.count)

        weights.forEach { weight in
            XCTAssert(SFSymbol.allCases.compactMap{Image(systemSymbol: $0, weight: weight)}.count == SFSymbol.allCases.count)
        }

        scales.forEach { scale in
            XCTAssert(SFSymbol.allCases.compactMap{Image(systemSymbol: $0, scale: scale)}.count == SFSymbol.allCases.count)
        }

        weights.forEach { weight in
            scales.forEach { scale in
                XCTAssert(SFSymbol.allCases.compactMap{Image(systemSymbol: $0, pointSize: 24, weight: weight, scale: scale)}.count == SFSymbol.allCases.count)
            }
        }
    }
}
