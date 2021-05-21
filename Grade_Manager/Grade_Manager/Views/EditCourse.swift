//
//  EditCourse.swift
//  Grade_Manager
//
//  Created by Juliana Glodek on 5/21/21.
//

import SwiftUI

struct EditCourse: View {
    var course: Course
    
    @State var courseNameN: String = ""
    @State var courseLetterN: String = ""
    @State var courseGradeN: String = ""
    @State var courseCreditsN: String = ""
    @Binding var toggleThis: Bool
    @Binding var courseList: [Course]
    
    init() {
        courseNameN = course.className
        courseLetterN = course.classGradeLetter
        courseGradeN = String(course.classGrade)
        courseCreditsN = String(course.credits)
    }
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                Text("Name")
                    .padding(.horizontal)
                    .font(Font.headline.weight(.semibold))
                TextField(course.className, text: $courseNameN)
                    .padding()
                    .border(Color.gray, width: 2)
                    .padding()
                Text("Grade Letter")
                    .padding(.horizontal)
                    .font(Font.headline.weight(.semibold))
                TextField(course.classGradeLetter, text: $courseLetterN)
                    .padding()
                    .border(Color.gray, width: 2)
                    .padding()
                Text("Grade Percentage")
                    .padding(.horizontal)
                    .font(Font.headline.weight(.semibold))
                TextField(String(course.classGrade), text: $courseGradeN)
                    .padding()
                    .border(Color.gray, width: 2)
                    .padding()
                Text("Credits")
                    .padding(.horizontal)
                    .font(Font.headline.weight(.semibold))
                TextField(String(course.credits), text: $courseCreditsN)
                    .padding()
                    .border(Color.gray, width: 2)
                    .padding()
                
                Button(action: {
                    
//                    if (courseNameN != course.className) {
//                        let newCourse = courseNameN
//                        course.className = newCourse
//                    }
                    
                    self.toggleThis.toggle()
                }) {
                    Text("Add Course")
                        .fontWeight(.semibold)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(30)
                }.padding()
                
                
                
            }
            .navigationTitle("Add course")
        }
    }
}

//struct EditCourse_Previews: PreviewProvider {
//    static var previews: some View {
//        EditCourse()
//    }
//}
