//
//  AverageGradeTests.swift
//  DMP GradingTests
//
//  Created by Garrit Schaap on 2021-11-11.
//

import XCTest
@testable import DMP_Grading

class AverageGradeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAverageGradeWithSingleGrade() throws {
        let course = Course(name: "iOS Development", credits: 7.5)
        let student = Student(name: "Some Name")
        let grade = Grade(course: course, value: 4)
        student.grades.append(grade)
        
        XCTAssertEqual(student.averageGrade, 4)
    }
    
    func testAverageGradeWithTwoGrades() throws {
        let course = Course(name: "iOS Development", credits: 7.5)
        let student = Student(name: "Some Name")
        let grade1 = Grade(course: course, value: 4)
        let grade2 = Grade(course: course, value: 3)
        student.grades.append(grade1)
        student.grades.append(grade2)
        
        XCTAssertEqual(student.averageGrade, 3.5)
    }
    
    func testAverageGradeWithTwoGradesWithDifferentCredits() throws {
        let course1 = Course(name: "1", credits: 7.5)
        let course2 = Course(name: "2", credits: 15)
        let student = Student(name: "Some Student")
        let grade1 = Grade(course: course1, value: 4)
        let grade2 = Grade(course: course2, value: 3)
        student.grades.append(grade1)
        student.grades.append(grade2)
        
        XCTAssertEqual(student.averageGrade, 3.33, accuracy: 0.01)
    }

}
