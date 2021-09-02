//
//  Roots.swift
//  EcuacionesSegundoGrado
//
//  Created by Aralí Mata on 8/31/21.
//

import Foundation

public class Roots {
    public let root1 :Float16
    public let root2: Float16
    public let imaginary: Bool
    public let d: Float16
    
    public init(root1: Float16, root2: Float16, imaginary: Bool, d: Float16) {
        self.root1 = root1
        self.root2 = root2
        self.imaginary = imaginary
        self.d = d
    }
    
}
