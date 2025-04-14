import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = "0.0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        // if sender.currentTitle! == "0%" {
        //     zeroPctButton.isSelected = true
        //     tenPctButton.isSelected = false
        //     twentyPctButton.isSelected = false
        //     tip = 0.0
        // } else if sender.currentTitle! == "10%" {
        //     zeroPctButton.isSelected = false
        //     tenPctButton.isSelected = true
        //     twentyPctButton.isSelected = false
        //     tip = 0.1
        // } else if sender.currentTitle! == "20%" {
        //     zeroPctButton.isSelected = false
        //     tenPctButton.isSelected = false
        //     twentyPctButton.isSelected = true
        //     tip = 0.2
        // }
        
     zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        tip = buttonTitleAsANumber / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
         splitNumberLabel.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        if bill != "" {
            billTotal = Double(bill)!
            let result = billTotal * (1 + tip) / Double(numberOfPeople)
            finalResult = String(format: "%.2f", result)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
        }
        else {
            // Create a pop-up
            let alert = UIAlertController(title: "Total Bill Not Entered", message: "Total bill not entered, please enter the total bill amount and press Calculate", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // when segue is to be performed this functinos runs first.
       if segue.identifier == "goToResults" {
            
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = finalResult
            destinationVC.tip = Int(tip * 100)
            destinationVC.split = numberOfPeople
        }
    }
}
