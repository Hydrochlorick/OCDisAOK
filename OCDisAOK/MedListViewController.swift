//
//  ViewController.swift
//  OCDisAOK
//
//  Created by Rick Jacobson on 1/7/21.
//

import UIKit


class MedListViewController: UITableViewController {
    var medications = [Medication]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medications.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "medCell", for: indexPath)
        cell.textLabel?.text = "Drug Name"
        cell.detailTextLabel?.text = "Dosage"
        return cell
    }
    
    @IBAction func unwindToMainMenu(segue: UIStoryboardSegue) {}


}

