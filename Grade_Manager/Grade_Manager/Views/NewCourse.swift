//
//  NewCourse.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/18/21.
//

import SwiftUI

//allow them to input a new course, they will input the course name, the id(maybe), grade in class, amount of credits


struct NewCourse: View {

    @State var courseNameN: String = ""
    @State var courseLetterN: String = ""
    @State var courseGradeN: String = ""
    @State var courseCreditsN: String = ""
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                Text("Name")
                    .padding(.horizontal)
                    .font(Font.headline.weight(.semibold))
                TextField("Ex. MATH101", text: $courseNameN)
                    .padding()
                    .border(Color.gray, width: 2)
                    .padding()
                Text("Grade Letter")
                    .padding(.horizontal)
                    .font(Font.headline.weight(.semibold))
                TextField("Ex. A", text: $courseLetterN)
                    .padding()
                    .border(Color.gray, width: 2)
                    .padding()
                Text("Grade Percentage")
                    .padding(.horizontal)
                    .font(Font.headline.weight(.semibold))
                TextField("Ex. 95", text: $courseGradeN)
                    .padding()
                    .border(Color.gray, width: 2)
                    .padding()
                Text("Credits")
                    .padding(.horizontal)
                    .font(Font.headline.weight(.semibold))
                TextField("Ex. 3", text: $courseCreditsN)
                    .padding()
                    .border(Color.gray, width: 2)
                    .padding()
                
                NavigationLink(destination: CourseList()) {
                    Text("Add Course")
                        .font(Font.headline.weight(.semibold))
                }
                .padding()
                .border(Color.gray, width: 3)
                .padding()
            }
            .navigationTitle("Add course")
        }
        
    }
}

struct NewCourse_Previews: PreviewProvider {
    static var previews: some View {
        NewCourse()
    }
}
