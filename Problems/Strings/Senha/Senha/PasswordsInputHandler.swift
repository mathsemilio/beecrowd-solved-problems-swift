import Foundation

struct PasswordInputHandler {
    
    private let MIN_PASSWORD_LENGHT = 1001
    private let MAX_PASSWORD_LENGHT = 9999
    
    func collectPasswords() -> Array<Int> {
        var passwords = Array<Int>()
        
        while true {
            let input = Int(readLine()!)!
            
            if input == 0 { break }
            
            if input < MIN_PASSWORD_LENGHT || input > MAX_PASSWORD_LENGHT {
                print("Password must be between \(MIN_PASSWORD_LENGHT) and \(MAX_PASSWORD_LENGHT).")
                continue
            } else {
                passwords.append(input)
            }
        }
        
        return passwords
    }
}
