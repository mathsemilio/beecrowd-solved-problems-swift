import Foundation

class TestCasesCollector {
    
    private let MIN_TEST_CASE_SIZE = 1
    
    func collect(basedOn numberOfTestCases: Int) -> Array<Int> {
        var counter = 0
        var testCases = Array<Int>()
    
        while (counter != numberOfTestCases) {
            let input = Int(readLine()!)!
            
            if input < MIN_TEST_CASE_SIZE {
                print("The test case must be at least \(MIN_TEST_CASE_SIZE).")
                continue
            } else {
                testCases.append(input)
                counter += 1
            }
        }
        
        return testCases
    }
}
