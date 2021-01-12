//
//  NewMedViewController.swift
//  OCDisAOK
//
//  Created by Rick Jacobson on 1/12/21.
//

import UIKit

class NewMedViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    // Create a PickerView thing so the user has to choose an accepted unit instead of typing it in!
    @IBOutlet weak var unitPicker: UIPickerView!
    
    
    // TODO: Actually use these to capture input from the user and create a Medication object to add to some magical, mystical database somewhwere
    @IBOutlet weak var newMedName: UITextField!
    @IBOutlet weak var newMedDose: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // So it doesn't just say "Title"
        self.title = "Add New Med"
        
        // Still don't get why this is necessary. I'm sure it'll make sense one day when another file is "delegating" for a view that is present in this file. Oh... Is that why?
        unitPicker.delegate = self
        
    }
    
    // Name each row after each of the possible cases for the coolio massUnit enum!
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return massUnit.allCases[row].rawValue
    }
    
    // What is in a row? That which we call a rows by any other name would small as... ah forget it
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // How many rows will there be? Well, exactly as many cases as there are for massUnits, of course!
    // Guess I should've done this one first. Idk how I ended up out of order, but it works right now and I'm terrified to change anything.
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return massUnit.allCases.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
//        pickedUnit = .miligram // WTF HOW DO I DO THIS AGHGHGHGHGH
    }
    
    @IBAction func addMed(_ sender: Any) {
        print("Your med WOULD be \(newMedDose.text ?? "A LOT") BLAH of \(newMedName.text ?? "DRUG") if I had any idea what I'm doing.")
    }


}

