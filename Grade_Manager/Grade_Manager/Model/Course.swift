//
//  Course.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/10/21.
//

import Foundation
import SwiftUI

//Grade object
struct Course: Identifiable,Codable {
    var id: Int
    var className: String
    var classGradeLetter: String
    var classGrade: Int
    var credits: Int
}
