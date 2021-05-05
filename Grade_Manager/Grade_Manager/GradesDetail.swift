//
//  GradesDetail.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/5/21.
//

import SwiftUI

//needs to have an edit (class name, grade, and credits) and delete class option
//shows grade and credits

struct GradesDetail: View {
    var Grade: Grade
    
    var body: some View {
        ScrollView{
            
        }
        .navigationTitle(grade.className)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct GradesDetail_Previews: PreviewProvider {
    static var previews: some View {
        GradesDetail(Grade: Grades[1])
    }
}
