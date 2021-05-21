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
        VStack(alignment: .leading) {
            TextField("Enter course name", text: $courseNameN)
                .padding(.vertical)
            TextField("Enter course grade letter", text: $courseLetterN)
                .padding(.vertical)
            TextField("Enter course grade percentage", text: $courseGradeN)
                .padding(.vertical)
            TextField("Enter course credits", text: $courseCreditsN)
                .padding(.vertical)
            
            Button(action: {
                let newCourse: Course = Course(id: courses.count+1, className: courseNameN, classGradeLetter: courseLetterN, classGrade: Int(courseGradeN)!, credits: Int(courseCreditsN)!)
                courses.append(newCourse)
                ContentView()
            }) {
                HStack {
                    Image(systemName: "square.and.arrow.down")
                        .font(.title)
                    Text("Done")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(40)
            }
        }
    }
}

struct NewCourse_Previews: PreviewProvider {
    static var previews: some View {
        NewCourse()
    }
}
