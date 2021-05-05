//
//  GradesList.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/5/21.
//

import SwiftUI

struct GradesList: View {
    var body: some View {
        NavigationView {
            List(Grade) { Grade in NavigationLink(destination:GradesDetail(Grade:Grade)) { GradesRow(Grade:Grade)
                
                }
            }
            .navigationTitle("Grades")
        }
    }
}

struct GradesList_Previews: PreviewProvider {
    static var previews: some View {
        GradesList()
    }
}
