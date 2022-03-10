import Foundation

struct ASCIIUtil {
    
    static func generateASCIITable() -> Array<Character> {
        var table = Array<Character>()
        
        for index in 0..<128 { table.append(Character(UnicodeScalar(index)!)) }
        
        return table
    }
}
