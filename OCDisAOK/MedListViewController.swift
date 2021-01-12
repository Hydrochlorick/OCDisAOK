//
//  ViewController.swift
//  OCDisAOK
//
//  Created by Rick Jacobson on 1/7/21.
//

import UIKit


class MedListViewController: UITableViewController {
    var medications = [Medication]()

    @IBOutlet var MedTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Tell the table to use this... file?/class/idk as its data source
        MedTableView.dataSource = self
        
        // Create two dummy meds to put in the array to see if it works
        let med1 = Medication(name: "Chicken Nuggets", dose: 100, units: .miligram)
        let med2 = Medication(name: "Alcohol", dose: 400, units: .milliliter)
        
        medications.append(med1)
        medications.append(med2)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
        return medications.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "medCell", for: indexPath)
        let med = medications[indexPath.row]
        
        let dose = "\(med.dose.description)\(med.units.rawValue)"
        
        cell.textLabel?.text = med.name
        cell.detailTextLabel?.text = dose
        return cell
    }
    
    @IBAction func unwindToMainMenu(segue: UIStoryboardSegue) {}


}

