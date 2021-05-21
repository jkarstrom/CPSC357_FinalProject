//
//  CourseDetail.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/12/21.
//

import SwiftUI

struct CourseDetail: View {
    var Course: Course
    @Binding var courseList: [Course]
    
    var body: some View {
        VStack{
            HStack {
                Text("Overall grade: " )
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                Spacer()
                Text(String(Course.classGrade) + "%")
                    .font(.title2)
                    .padding()
            }
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
            
                Button(action: {
                    courseList.remove(at: Course.id-1)
                }) {
                    HStack {
                        Text("Delete Course")
                            .fontWeight(.bold)
                            .font(.title3)
                    }
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.gray)
                    .cornerRadius(30)
                }

            
        }
        .navigationTitle(Course.className)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct CourseDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        CourseDetail(Course: courses[1], courseList: )
//
//    }
//}
