import Foundation

let inputHandler = InputHandler()
let testCases = inputHandler.testCases

let contractValueResolver = ContractValueResolver()
print(contractValueResolver.resolve(testCases))
