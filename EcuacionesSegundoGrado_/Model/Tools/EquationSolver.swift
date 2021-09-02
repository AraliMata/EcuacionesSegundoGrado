//
//  EquationSolver.swift
//  EcuacionesSegundoGrado
//
//  Created by user189928 on 8/28/21.
//

import Foundation

public class EquationSolver {
    public func solve(coefficients: Coeff) -> Roots {
        
        
        let d = (coefficients.b * coefficients.b) - 4.0 * coefficients.a * coefficients.c
        
        if(coefficients.a == 0){
            return Roots(root1: 0.0, root2: 1600.0, imaginary: true, d: 4.0)
        }
        
        if(d == 0){
            let root_1 = -coefficients.b / (2 * coefficients.a)
            return Roots(root1: root_1, root2: root_1, imaginary: false, d: d)
        }else if(d > 0){
            let root_1 = (-coefficients.b + sqrt(d)) / (2.0 * coefficients.a)
            let root_2 = (-coefficients.b - sqrt(d)) / (2.0 * coefficients.a)
            return Roots(root1: root_1, root2: root_2, imaginary: false, d: d)
        }else{
            let positive = sqrt(abs(d))
            let newD = positive / (2.0 * coefficients.a)
            let root_1 = (-coefficients.b) / (2.0 * coefficients.a)
            let root_2 = (-coefficients.b) / (2.0 * coefficients.a)
            return Roots(root1: root_1, root2: root_2, imaginary: true, d: newD)
        }
        
        
    }
}





  
