import Foundation

extension Character {
    
    func getPosition(from asciiTable: Array<Character>) -> Int {
        let currentChar = asciiTable.first(where: { charFromTable in return charFromTable == self}) ?? " "
        return asciiTable.firstIndex(of: currentChar) ?? 32
    }
    
    func getCharAfter(deslocatedBy positions: Int, from asciiTable: Array<Character>) -> Character {
        let currentCharPosition = asciiTable.firstIndex(of: self) ?? 32
        
        let actualCharPosition = currentCharPosition - 1
        let charToBeReturnedPosition = asciiTable.index(after: actualCharPosition + positions)
                
        return asciiTable[charToBeReturnedPosition]
    }
    
    func getCharBefore(deslocatedBy positions: Int, from asciiTable: Array<Character>) -> Character {
        let currentCharPosition = asciiTable.firstIndex(of: self) ?? 32
        
        let actualCharPosition = currentCharPosition - 1
        let charToBeReturnedPosition = asciiTable.index(after: actualCharPosition - positions)
                
        return asciiTable[charToBeReturnedPosition]
    }
}
