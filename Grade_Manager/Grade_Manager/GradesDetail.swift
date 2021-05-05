//
//  GradesDetail.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/5/21.
//

import SwiftUI

struct GradesDetail: View {
    var Grade: Grade
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct GradesDetail_Previews: PreviewProvider {
    static var previews: some View {
        GradesDetail(Grade: Grades[1])
    }
}
