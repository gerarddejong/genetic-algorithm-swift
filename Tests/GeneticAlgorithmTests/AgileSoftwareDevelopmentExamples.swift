import Foundation
import XCTest
@testable import GeneticAlgorithm

class UserStory {
    var estimate: Int = 0
    var priority: Int = 0

    init(initialEstimate: Int, initialPriority:Int) {
        estimate = initialEstimate
        priority = initialPriority
    }

    func description()->String {
        return "UserStory(estimate:\(estimate), priority:\(priority))"
    }
}

// class Plan : Solution {
//     var sprintLength: Int = 14
//     var stories: [UserStory] = []
// }

class AgileSoftwareDevelopmentExamples: XCTestCase {
    func generateTestStories(numberToGenerate:Int)->[UserStory] {
        var testStories: [UserStory] = []
        for _ in 1...numberToGenerate {
            testStories.append(UserStory(initialEstimate:Int(arc4random_uniform(7)+1), initialPriority:Int(arc4random_uniform(9)+1)))
        }
        return testStories
    }

    func testUserStoryGeneration()  {
        let testStories = generateTestStories(numberToGenerate:30)
        XCTAssertEqual(testStories.count, 30)

        for userStory in testStories ?? [] { 
            print(userStory.description())
        }
    }

    func testSprintPlanning()  {
        XCTAssertTrue(true)
    }

    static var allTests : [(String, (AgileSoftwareDevelopmentExamples) -> () throws -> Void)] {
        return [
            ("testSprintPlanning", testSprintPlanning),
            ("testUserStoryGeneration", testUserStoryGeneration)
            ]
    }
}
