import Foundation

class LedCounter {
    
    private var testCases = Array<Int>()
    
    private var results = Array<Int>()
    
    func count(_ testCases: Array<Int>) -> Array<Int> {
        self.testCases.append(contentsOf: testCases)
        
        calculateLeds()
        
        return results
    }
    
    private func calculateLeds() {
        for testCase in testCases {
            results.append(calculateLedsRequired(for: testCase))
        }
    }
    
    private func calculateLedsRequired(for testCase: Int) -> Int {
        var ledsRequired = 0
        
        for number in String(testCase) {
            ledsRequired += getLedCount(for: number.wholeNumberValue!)
        }
        
        return ledsRequired
    }
    
    private func getLedCount(for number: Int) -> Int {
        var ledCount = 0
        
        switch (number) {
            case 1 : ledCount = 2
            case 2, 3, 5 : ledCount = 5
            case 4 : ledCount = 4
            case 6, 9, 0 : ledCount = 6
            case 7 : ledCount = 3
            case 8 : ledCount = 7
            default : ledCount = 0
        }
        
        return ledCount
    }
}
