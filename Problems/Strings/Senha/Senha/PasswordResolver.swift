import Foundation

struct PasswordResolver {
    
    func resolve(_ passwords: Array<Int>) -> Array<Int> {
        var resolvedPasswords = Array<Int>()
        
        for password in passwords {
            resolvedPasswords.append(password - 1)
        }
        
        return resolvedPasswords
    }
}
