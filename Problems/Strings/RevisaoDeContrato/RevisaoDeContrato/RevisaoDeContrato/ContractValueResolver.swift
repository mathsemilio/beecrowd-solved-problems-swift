import Foundation

class ContractValueResolver {
    
    private var results = Array<String>()
    
    func resolve(_ testCases: [String]) -> [String] {
        process(testCases)
        return results
    }
    
    private func process(_ testCase: [String]) {
        for testCase in testCase { resolveContractValue(from: testCase) }
    }
    
    private func resolveContractValue(from testCase: String) {
        let faultyDigit = testCase.faultyDigit
        var contractValue = testCase.contractValue
        
        guard contractValue.contains(Character(faultyDigit)) else {
            results.append(contractValue)
            return
        }
        
        guard !contractValue.onlyContains(Character(faultyDigit)) else {
            results.append("0")
            return
        }
        
        guard !contractValue.allElementsAreEqualToZero(exceptFor: Character(faultyDigit)) else {
            results.append("0")
            return
        }
        
        contractValue.remove(allOccurancesOf: Character(faultyDigit))
        results.append(contractValue)
    }
}
