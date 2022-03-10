import Foundation

let inputHandler = InputHandler()
let testCases = inputHandler.getTestCases(basedOn: inputHandler.getNumberOfLines())

let cryptographer = Cryptographer()
let results = cryptographer.cipher(testCases)

print(results)
