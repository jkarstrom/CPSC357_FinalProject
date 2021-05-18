//
//  CourseDetail.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/12/21.
//

import SwiftUI

struct CourseDetail: View {
    var Course: Course
    
    var body: some View {
        ScrollView{
            Spacer()
            HStack {
                Text("Overall grade: " )
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Spacer()
                Text(String(Course.classGrade))
                    .font(.title)
            }
            Spacer()
            HStack {
                Text("Credits: " )
                Spacer()
                Text(String(Course.credits))
            }
            
            
            HStack{
                
                //this button will bring up a view to edit
                Button(action: {
                    //EditCourse()
                }) {
                    HStack {
                        Image(systemName: "square.and.pencil")
                            .font(.title)
                        Text("Edit")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(40)
                }
                
                //this button will delete the course from the Json file
                Button(action: {
                    //delete courses.courses[Course.id]
                }) {
                    HStack {
                        Image(systemName: "trash")
                            .font(.title)
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(40)
                }                
            }
            
        }
        .navigationTitle(Course.className)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CourseDetail_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetail(Course: courses[1])

    }
}
