//
//  GradeData.swift
//  Grade_Manager
//
//  Created by Joan Karstrom on 5/5/21.
//

import Foundation

var courses: [Course] = load("courseData.json")
var gpa: Double = getGPA(courses: courses)

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}



func getGPA(courses: [Course]) -> Double {
    
    var totalCredits: Int = 0
    var totalPoints: Double = 0
    
    for course in courses {
        let classPoints: Double = getClassGPA(grade: course.classGradeLetter) * Double(course.credits)
        totalPoints += classPoints
        totalCredits += course.credits
    }
    
    let unroundedGPA: Double = totalPoints / Double(totalCredits)
    
    return Double(round(1000 * unroundedGPA) / 1000)

}

func getClassGPA(grade: String) -> Double {
    
    switch grade {
    case "A":
        // 4.0 GPA
        return 4.0
    case "A-":
        // 3.7 GPA
        return 3.7
    case "B+":
        // 3.3 GPA
        return 3.3
    case "B":
        // 3.0 GPA
        return 3.0
    case "B-":
        // 2.7 GPA
        return 2.7
    case "C+":
        // 2.3 GPA
        return 2.3
    case "C":
        // 2.0 GPA
        return 2.0
    case "C-":
        // 1.7 GPA
        return 1.7
    case "D+":
        // 1.3 GPA
        return 1.3
    case "D":
        // 1.0 GPA
        return 1.0
    case "D-":
        // 0.7 GPA
        return 0.7
    case "F":
        // 0.0 GPA
        return 0.0
    default:
        return 0.0
    }

}
