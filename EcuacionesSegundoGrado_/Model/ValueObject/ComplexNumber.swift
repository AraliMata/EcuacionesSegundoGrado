//
//  ComplexNumber.swift
//  EcuacionesSegundoGrado_
//
//  Created by user189928 on 9/1/21.
//

import Foundation

struct ComplexNumber {
    var real: Double
    var imaginary: Double
    public init(_ real: Double, _ imaginary: Double) {
        self.real = real
        self.imaginary = imaginary
    }
    public init(_ real: Double) {
        self.real = real
        self.imaginary = 0
    }
    var isReal: Bool { imaginary == 0 }
}

extension ComplexNumber {
    static func zero() -> Self {
        return ComplexNumber(0, 0)
    }
}

extension ComplexNumber: CustomStringConvertible {
    var description: String {
        return "(Real: \(real), Imaginary: \(imaginary))"
    }
}
