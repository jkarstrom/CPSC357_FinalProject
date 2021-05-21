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
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                Spacer()
                Text(String(Course.classGrade))
                    .font(.title2)
                    .padding()
            }
            Spacer()
            HStack {
                Text("Credits: " )
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                Spacer()
                Text(String(Course.credits))
                    .font(.title2)
                    .padding()
            }
            
            Spacer()
            Spacer()
            Spacer()
            
            
            HStack{
                
                // this button will delete the course from the Json file
                Button(action: {
                    courses.remove(at: Course.id-1)
                }) {
                    HStack {
                        Text("Delete")
                            .fontWeight(.bold)
                            .font(.title3)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(30)
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
