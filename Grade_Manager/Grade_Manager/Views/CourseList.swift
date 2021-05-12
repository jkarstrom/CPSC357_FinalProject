//
//  GradesList.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/5/21.
//

import SwiftUI

//shows the list of classes and grades
//on the top it shows overall GPA

struct CourseList: View {
    var body: some View {
        
        
        //overall average
        //veritccal stack
        NavigationView {
            List(courses) { course in
                NavigationLink(destination: CourseDetail(Course: course)) {
                    CourseRow(Course: course)
                }
            }
            .navigationTitle("Course")
        }
    }
}


struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            CourseList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
