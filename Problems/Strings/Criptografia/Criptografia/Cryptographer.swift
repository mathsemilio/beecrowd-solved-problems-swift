import Foundation

class Cryptographer {
    
    private var testCases = Array<String>()
    private var results = Array<String>()
    
    private var originalTestCase = ""
    private var cipheredTestCase = ""
    
    private let asciiTable = ASCIIUtil.generateASCIITable()
    
    func cipher(_ testCases: Array<String>) -> Array<String> {
        self.testCases.append(contentsOf: testCases)
        
        cipherTestCases()
        
        return results
    }
    
    private func cipherTestCases() {
        for testCase in testCases {
            originalTestCase = testCase
            performFirstPass()
        }
    }
    
    private func performFirstPass() {
        for char in originalTestCase.charArray {
            if char.isLetter {
                cipheredTestCase.append(char.getCharAfter(deslocatedBy: 3, from: asciiTable))
            } else {
                cipheredTestCase.append(char)
            }
        }
        
        performSecondPass()
    }
    
    private func performSecondPass() {
        cipheredTestCase = cipheredTestCase.reversed
        performThirdPass()
    }
    
    private func performThirdPass() {
        let testCasePreviousHalf = cipheredTestCase.previousHalf
        var processedFowardHalf = ""
        
        for char in cipheredTestCase.fowardHalf.charArray {
            processedFowardHalf.append(char.getCharBefore(deslocatedBy: 1, from: asciiTable))
        }
        
        cipheredTestCase = testCasePreviousHalf.appending(processedFowardHalf)
        
        results.append(cipheredTestCase)
        
        clearPreviousTestCase()
    }
    
    private func clearPreviousTestCase() {
        originalTestCase = ""
        cipheredTestCase = ""
    }
}
