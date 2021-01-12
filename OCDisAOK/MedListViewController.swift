//
//  ViewController.swift
//  OCDisAOK
//
//  Created by Rick Jacobson on 1/7/21.
//

import UIKit


class MedListViewController: UITableViewController {
    // Initialize empty array for Medications
    var medications = [Medication]()

    // Link to the table on the Storyboard
    @IBOutlet var MedTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "OCD is AOK"

        // Tell the table to use this... file?/class/instance/idk as its data source
        MedTableView.dataSource = self
        
        // Create two dummy meds to put in the array to see if it works
        // TODO: Not this. Add meds to medications array from a database or UserDefaults
        let med1 = Medication(name: "Chicken Nuggets", dose: 100, units: .miligram)
        let med2 = Medication(name: "Alcohol", dose: 400, units: .milliliter)
        
        medications.append(med1)
        medications.append(med2)
        
    }
    
    // How many sections? For now, one.
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // How many rows in each section? The number of saved medications.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medications.count
    }
    
    // What goes in each row? It's a cell, and here's how we decide what that means:
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // This tells it we're using the prototype cell from our storyboard named 'medCell'
        let cell = tableView.dequeueReusableCell(withIdentifier: "medCell", for: indexPath)
        
        // Take the medication for the corresponding row index from medications array
        let med = medications[indexPath.row]
        
        // Convert med.dose to a string and smash it in with the med.units value.
        let dose = "\(med.dose.description)\(med.units.rawValue)"
        
        // Main text of the cell is the med's name, detail text of the cell is the dose string we just created
        cell.textLabel?.text = med.name
        cell.detailTextLabel?.text = dose
        
        // SEND IT
        return cell
    }
    
    // Didn't end up using this, yet, but it's here for safekeeping
    @IBAction func unwindToMainMenu(segue: UIStoryboardSegue) {}


}

