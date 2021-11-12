//
//  Student.swift
//  DMP Grading
//
//  Created by Garrit Schaap on 2021-11-11.
//

import Foundation

class Student {
    let name: String
    var grades: [Grade] = []
    
    var averageGrade: Float {
        let totalGrade = grades.reduce(into: 0.0) { partialResult, grade in
            partialResult += Float(grade.value) * grade.course.credits
        }
        let totalCredits = grades.reduce(0.0, { $0 + $1.course.credits })
        let result = totalGrade / totalCredits
        return result
    }
    
    init(name: String) {
        self.name = name
    }
}
