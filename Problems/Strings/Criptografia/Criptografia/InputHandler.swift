import Foundation

struct InputHandler {
    
    private let MIN_LINES = 1
    private let MAX_LINES = Int(1.0 * pow(10.0, 4.0))
    
    private let MIN_TEST_CASE_SIZE = 1
    private let MAX_TEST_CASE_SIZE = Int(1.0 * pow(10.0, 3.0))
    
    func getNumberOfLines() -> Int {
        let numberOfLines = Int(readLine()!)!
        
        if numberOfLines < MIN_LINES || numberOfLines > MAX_LINES {
            print("The number of input lines must be between \(MIN_LINES) and \(MAX_LINES).")
            exit(1)
        }
        
        return numberOfLines
    }
    
    func getTestCases(basedOn numberOfLines: Int) -> Array<String> {
        var counter = 0
        var testCases = Array<String>()
        
        while counter != numberOfLines {
            let testCase = readLine()!
            
            if testCase.count < MIN_TEST_CASE_SIZE || testCase.count > MAX_TEST_CASE_SIZE {
                print("The test case size must be between \(MIN_TEST_CASE_SIZE) and \(MAX_TEST_CASE_SIZE).")
                continue
            } else {
                testCases.append(testCase)
                counter += 1
            }
        }
        
        return testCases
    }
}
