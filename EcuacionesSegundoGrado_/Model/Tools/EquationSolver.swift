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
        
        
        if(d == 0){
            let root_1 = -coefficients.b / (2 * coefficients.a)
            return Roots(root1: root_1, root2: root_1)
        }else if(d > 0){
            let root_1 = -coefficients.b + sqrt(d) / (2.0 * coefficients.a)
            let root_2 = -coefficients.b - sqrt(d) / (2.0 * coefficients.a)
            return Roots(root1: root_1, root2: root_2)
        }else{
            let root_1 = Float16(0.0)
            let root_2 = Float16(0.0)
            return Roots(root1: root_1, root2: root_2)
        }
        
        
    }
}

/*public class EquationSolver {
    public func solve(coefficients: Coeff) -> Roots {
        
        let d = pow(coefficients.b, 2) - (4.0 * coefficients.a * coefficients.c)
        
        if d > 0 {
            let root_1 = ComplexNumber((-coefficients.b + sqrt(d))/(2*coefficients.a))
            let root_2 = ComplexNumber((-coefficients.b - sqrt(d))/(2*coefficients.a))
            return Roots(root1: root_1, root2: root_2)
        } else if d == 0 {
            let root_1 = ComplexNumber(-coefficients.b / (2 * coefficients.a))
            return Roots(root1: root_1, root2: root_1)
        } else{
            let root_1 = ComplexNumber(-coefficients.b / (2 * coefficients.a), sqrt(-d)/(2*coefficients.a))
            let root_2 = ComplexNumber(-coefficients.b / (2 * coefficients.a), -sqrt(-d)/(2*coefficients.a))
            return Roots(root1: root_1, root2: root_2)
        }

        
        /*let root_1 = (-coefficients.b + secondTerm) / (2.0 * coefficients.a)
        let root_2 = (-coefficients.b - secondTerm) / (2.0 * coefficients.a)*/
        
       
    }
}*/




  
