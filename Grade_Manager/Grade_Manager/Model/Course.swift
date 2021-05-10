//
//  Course.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/10/21.
//

import Foundation
import SwiftUI

//Grade object
struct Course: Codable {
    var id: Int
    var className: String
    var classGrade: Int
    var description: String
    var credits: Int
}
