//
//  EquationSolverTests.swift
//  EcuacionesSegundoGradoTests
//
//  Created by user189928 on 8/30/21.
//

import XCTest
@testable import EcuacionesSegundoGrado_

class EquationSolverTests: XCTestCase {

    let equationSolver = EquationSolver()

    func testSolveWithOneCoefficient() throws {
        // Given
        let input = Coeff(a: 9.0, b: 0.0, c: 0.0)
        
        // When
        let result = equationSolver.solve(coefficients: input)
        
        // Then
        let expectedRoot1: Float16 = 0.0
        let expectedRoot2: Float16 = 0.0
        XCTAssertEqual(result.root1, expectedRoot1)
        XCTAssertEqual(result.root2, expectedRoot2)
        
    }
    
    func testSolveWithoutC() throws {
        // Given
        let input = Coeff(a: 5.0, b: 2.0, c: 0.0)
        
        // When
        let result = equationSolver.solve(coefficients: input)
        
        // Then
        let expectedRoot1: Float16 = 0
        let expectedRoot2: Float16 = -0.4
        XCTAssertEqual(result.root1, expectedRoot1)
        XCTAssertEqual(result.root2, expectedRoot2)
    }
    
    func testSolveWithoutB() throws {
        // Given
        let input = Coeff(a: -4.0, b: 0.0, c: 4.0)
        
        // When
        let result = equationSolver.solve(coefficients: input)
        
        // Then
        let expectedRoot1: Float16 = -1.0
        let expectedRoot2: Float16 = 1.0
        XCTAssertEqual(result.root1, expectedRoot1)
        XCTAssertEqual(result.root2, expectedRoot2)
    }
    
    func testSolveWithThreeCoefficients() throws {
        // Given
        let input = Coeff(a: 1.0, b: -5.0, c: 6.0)
        
        // When
        let result = equationSolver.solve(coefficients: input)
        
        // Then
        let expectedRoot1: Float16 = 3
        let expectedRoot2: Float16 = 2
        XCTAssertEqual(result.root1, expectedRoot1)
        XCTAssertEqual(result.root2, expectedRoot2)
    }
    
    
    


}


