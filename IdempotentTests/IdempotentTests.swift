import XCTest
import Idempotent

let n: Int32 = 4

class IdempotentTests: XCTestCase {
    func testCpp() {
        var erg: Int32 = 0
        self.measure {
            erg = idempotentCpp(n)
        }
        print(erg)
    }
    
    func testSwift() {
        var erg: Int32 = 0
        self.measure {
            erg = idempotentSwift(n)
        }
        print(erg)
    }
}
