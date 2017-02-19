import XCTest
//@testable import GeneticAlgorithm

class GeneticAlgorithmTests: XCTestCase {
    func testGeneticAlgorithm()  {
        XCTAssertTrue(true)
    }

    static var allTests : [(String, (GeneticAlgorithmTests) -> () throws -> Void)] {
        return [
            ("testGeneticAlgorithm", testGeneticAlgorithm)
            ]
    }
}
