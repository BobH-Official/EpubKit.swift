import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(EpubKit_swiftTests.allTests),
    ]
}
#endif
