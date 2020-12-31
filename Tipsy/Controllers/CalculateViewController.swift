
import UIKit

class CalculateViewController: UIViewController {
    
    var splitterInst = Splitter()
    
    @IBOutlet weak var billAmountField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var peopleCountLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    
    @IBAction func percentButtonTapped(_ sender: UIButton) {
        
        billAmountField.endEditing(true)
        
        splitterInst.percentSelected = sender.currentTitle!
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
    }
    
    
    @IBAction func stepperTapped(_ sender: UIStepper) {
        peopleCountLabel.text = String(Int(sender.value))
        splitterInst.peopleCount = Int(sender.value)
    }
    

    @IBAction func calculatePressed(_ sender: UIButton) {
        splitterInst.calculateSplit(billAmount: billAmountField.text ?? "0.0")
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult" {
            var destinationVC = segue.destination as! ResultViewController
            destinationVC.splitAmount = splitterInst.getSplitAmount()
            destinationVC.splitInfo = splitterInst.getSplitDetails()
        }
    }
}

