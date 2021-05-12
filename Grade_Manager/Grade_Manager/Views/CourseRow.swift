//
//  CourseRow.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/10/21.
//

import SwiftUI

struct CourseRow: View {
    var Course: Course
    
    var body: some View {
        HStack {
            Text(Course.className)
            Spacer()
            Text(Course.classGradeLetter)
            
        }
    }
}

struct CourseRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CourseRow(Course: courses[0])
            CourseRow(Course: courses[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
