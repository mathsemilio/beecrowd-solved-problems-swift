import Foundation

extension String {
    
    var charArray: Array<Character> {
        get {
            var charArray = Array<Character>()
            
            for element in self {
                charArray.append(Character(extendedGraphemeClusterLiteral: element))
            }
            
            return charArray
        }
    }
    
    var reversed: String {
        get {
            var reversedString = ""
            
            for char in self.reversed() {
                reversedString.append(char)
            }
            
            return reversedString
        }
    }
    
    var fowardHalf: String {
        get {
            let halfStartIndex = index(startIndex, offsetBy: count / 2)
            return substring(from: halfStartIndex)
        }
    }
    
    var previousHalf: String {
        get {
            let halfStartIndex = index(startIndex, offsetBy: count / 2)
            return substring(to: halfStartIndex)
        }
    }
}
