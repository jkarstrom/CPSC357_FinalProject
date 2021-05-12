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
