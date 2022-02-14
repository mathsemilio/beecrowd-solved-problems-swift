import Foundation

let passwordsInputHandler = PasswordInputHandler()
let passwordResolver = PasswordResolver()

print(passwordResolver.resolve(passwordsInputHandler.collectPasswords()))
