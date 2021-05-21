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
        
        VStack {
            
            NavigationView {
                
                List(courses) { course in
                    NavigationLink(destination: CourseDetail(Course: course)) {
                        CourseRow(Course: course)
                    }
                }
                .navigationTitle("GPA: " + String(gpa))
                
            }
            
//            NavigationLink(destination: NewCourse()) {
//                Text("Add Course")
//                    .fontWeight(.semibold)
//                    .padding()
//                    .foregroundColor(.white)
//                    .background(Color.black)
//                    .cornerRadius(30)
//            }
//
//            padding()
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
