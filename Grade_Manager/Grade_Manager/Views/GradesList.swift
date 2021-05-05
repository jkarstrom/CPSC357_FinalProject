//
//  GradesList.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/5/21.
//

import SwiftUI

//shows the list of classes and grades
//on the top it shows overall GPA

struct GradesList: View {
    var body: some View {
        NavigationView {
            List(grades) { Grade in
                NavigationLink(destination:GradesDetail(Grade:Grade)) {
                    GradesRow(Grade:Grade)
                
                }
            }
            .navigationTitle("Grades")
        }
    }
}

struct GradesList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            GradesList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
