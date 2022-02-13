import Foundation

let MAX_TEST_CASE_NUMBER = 1000

let ledCounter = LedCounter()
let testCasesCollector = TestCasesCollector()

let numberOfTestCases = Int(readLine()!)!

if numberOfTestCases > MAX_TEST_CASE_NUMBER {
    print("The number of test cases must not exceed \(MAX_TEST_CASE_NUMBER).")
    exit(1)
}

print(ledCounter.count(testCasesCollector.collect(basedOn: numberOfTestCases)))
