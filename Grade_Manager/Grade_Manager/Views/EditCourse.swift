//
//  EditCourse.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/18/21.
//

import SwiftUI

//this will be the view which will allow to edit the course name, credits and overall grade


struct EditCourse: View {
    var Course: Course
    
    @State var courseNameI: String = ""
    @State var courseGradeI: String = ""
    @State var courseCreditsI: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter course Name", text: $courseNameI)
                .padding(.vertical)
            TextField("Enter course grade", text: $courseGradeI)
                .padding(.vertical)
            TextField("Enter course grade", text: $courseCreditsI)
                .padding(.vertical)
            
            HStack{
                Button(action: {
                    //Leave
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
}

struct EditCourse_Previews: PreviewProvider {
    static var previews: some View {
        EditCourse(Course: courses[1])
    }
}
