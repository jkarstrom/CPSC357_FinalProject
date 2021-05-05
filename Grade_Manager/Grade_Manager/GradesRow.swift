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
            Grade.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(Grade.name)
            Spacer()
        }
    }
}

struct GradesRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GradesRow(Grade: Grade[0])
            GradesRow(Grade: Grade[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
