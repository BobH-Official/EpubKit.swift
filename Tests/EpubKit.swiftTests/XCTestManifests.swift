//
// BoB @ unouprime.oder@outlook.com
//

import XCTest

#if !canImport(ObjectiveC)
    public func allTests() -> [XCTestCaseEntry] {
        [
            testCase(EpubKit_swiftTests.allTests),
        ]
    }
#endif
