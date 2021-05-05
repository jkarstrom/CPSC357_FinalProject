//
//  GradesRow.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/5/21.
//

import SwiftUI

struct GradesRow: View {
    var Grade: Grade
    
    var body: some View {
        HStack {
            Text(Grade.className)
            Spacer()
            //Text(Grade.classGrade) would show the class average
        }
    }
}

struct GradesRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GradesRow(Grade: grades[0])
            GradesRow(Grade: grades[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
