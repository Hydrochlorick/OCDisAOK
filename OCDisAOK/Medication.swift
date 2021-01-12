//
//  Medication.swift
//  OCDisAOK
//
//  Created by Rick Jacobson on 1/12/21.
//

import Foundation

enum massUnit : String, CaseIterable {
    case miligram = "mg"
    case microgram = "ug"
    case milliliter = "mL"
    case cubicCentimeter = "cc"
    case internationalUnit = "IU"
}

struct Medication {
    let name: String
    let dose: Float
    let units: massUnit
}
