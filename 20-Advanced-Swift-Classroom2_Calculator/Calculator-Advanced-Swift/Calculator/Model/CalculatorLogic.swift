import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    private var imtermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double){
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        if let n = number {
            switch symbol {
                //                //          displayLabel.text = String(number * -1)//previous syntax replaced with refactored using getter and setter as below.
                //                displayValue = displayValue * -1//or displayValue *= -1
            case "+/-" :
                return n * -1
            case "AC" :
                return 0
            case "%" :
                return n * 0.01
            case "=" :
                return performTwoNumCalculation(n2: n)
            default :
                imtermediateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    private func performTwoNumCalculation(n2: Double) -> Double? {
        
        if let n1 = imtermediateCalculation?.n1,
            let operation = imtermediateCalculation?.calcMethod{
            
            switch operation {
            case "+" :
                return n1 + n2
            case "÷" :
                return n1 / n2
            case "-" :
                return n1 - n2
            case "×" :
                return n1 * n2
            default:
                fatalError("The operation passed in does not match any of the cases.")
            }
        }
        return nil
    }
}

