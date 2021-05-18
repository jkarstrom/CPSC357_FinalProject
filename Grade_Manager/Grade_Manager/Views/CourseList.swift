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
            
            //overall average
            HStack{
                Text("Overall GPA: ")
                    .font(.largeTitle)
                
                //Text(String(getGPA(Course: courses[]))
                //    .font(.largeTitle)
            }
            
            Spacer()
            
            Button(action: {
                //NewCourse()
                //writes to Json file a new class
            }) {
                HStack {
                    Text("Add Course")
                        .fontWeight(.semibold)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(30)
            }
           
            NavigationView {
                List(courses) { course in
                    NavigationLink(destination: CourseDetail(Course: course)) {
                        CourseRow(Course: course)
                    }
                }
                .navigationTitle("Courses")
            }
            
        }
        .background(Color.pink)
        
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
