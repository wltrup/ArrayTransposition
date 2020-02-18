import XCTest
@testable import ArrayTransposition

final class ArrayTranspositionTests: XCTestCase {

    func test_transpose() {
        let x = [ [1,2,3,4], [5,6,7,8], [9,10,11,12] ]
        let exp = [ [1,5,9], [2,6,10], [3,7,11], [4,8,12] ]
        let res = Array.transpose(x)
        XCTAssert(res == exp)
    }

}
