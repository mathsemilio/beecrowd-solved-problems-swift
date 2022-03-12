import Foundation

class InputHandler {
    
    private let FINAL_INPUT_LINE = "0 0"
    private let MAX_FAULT_DIGIT = 9
    
    private var collectedTestCases = Array<String>()
    
    var testCases: [String] {
        get {
            while true {
                let input = readLine()!
                
                guard input != FINAL_INPUT_LINE else { break }
                
                validate(input)
            }
            
            return collectedTestCases
        }
    }
    
    private func validate(_ input: String) {
        guard input.contains(" ") else { return }
            
        let faultyDigit = Int(input.faultyDigit)!
        let contractValue = Int(input.contractValue)!
            
        if faultyDigit < 1 || faultyDigit > MAX_FAULT_DIGIT {
            print("Invalid faulty number. Must be between 1 and \(MAX_FAULT_DIGIT)")
            return
        }
            
        if contractValue < 1 {
            print("Invalid contract value. Must be at least 1")
            return
        }
        
        collectedTestCases.append(input)
    }
}
