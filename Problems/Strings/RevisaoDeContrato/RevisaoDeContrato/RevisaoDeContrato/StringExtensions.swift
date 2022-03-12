import Foundation

extension String {
    
    var faultyDigit: String {
        get { String(split(separator: " ")[0]) }
    }
    
    var contractValue: String {
        get { String(split(separator: " ")[1]) }
    }
    
    func onlyContains(_ element: Character) -> Bool {
        var onlyContainsElement = true
        
        for index in indices {
            let elementAtIndex = self[index]
            if elementAtIndex != element { onlyContainsElement = false }
        }
        
        return onlyContainsElement
    }
    
    mutating func allElementsAreEqualToZero(exceptFor element: Character) -> Bool {
        remove(allOccurancesOf: element)
        return onlyContains("0")
    }
    
    mutating func remove(allOccurancesOf element: Character) {
        removeAll(where: { currentElement in return  currentElement == element })
    }
}
