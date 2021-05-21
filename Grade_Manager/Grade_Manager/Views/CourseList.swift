//
//  GradesList.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/5/21.
//

import SwiftUI

// shows the list of classes and grades
// on the top it shows overall GPA

extension Binding {
    
    func onChange(_ handler: @escaping (Value) -> Void) -> Binding<Value> {
        Binding (get: {self.wrappedValue}, set: {newValue in self.wrappedValue = newValue
                    handler(newValue)})
    }
    
}

struct CourseList: View {
    
    @State var showingDetail = false
    @State var courseList = courses
    @State var totalGPA = gpa
        
        var body: some View {
            
            VStack {
                
                NavigationView {
                    
                    List(courseList) { course in
                        NavigationLink(destination: CourseDetail(Course: course, courseList: $courseList)) {
                            CourseRow(Course: course)
                        }
                    }
                    .navigationTitle("GPA: " + String(totalGPA))
                    
                }
                
                Button(action: {
                    self.showingDetail.toggle()
                }) {
                    Text("Add Course")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(30)
                    }.sheet(isPresented: $showingDetail) {
                        NewCourse(toggleThis: $showingDetail, courseList: $courseList.onChange(recalcGPA))
                        }
                .padding()
            }
            
            
        }
    
    func recalcGPA(courses: [Course]) {
        totalGPA = getGPA(courses: courseList)
    }

}


struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            CourseList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
