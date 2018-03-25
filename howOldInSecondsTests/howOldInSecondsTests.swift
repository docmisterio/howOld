import XCTest
@testable import howOldInSeconds

class howOldInSecondsTests: XCTestCase {
    func test_modelReturnsAgeInWeeks() {
        let testObject = Model()
        let age = testObject.ageInWeeks(date: Date())
        
        XCTAssertEqual(1084, age)
    }
}
