//
//  ViewController.swift
//  EcuacionesSegundoGrado
//
//  Created by Aralí Mata on 8/16/21.
//

import UIKit

class ViewController: UIViewController {
    let equationSolver = EquationSolver()

    @IBOutlet weak var aTextField: UITextField!
    
    @IBOutlet weak var bTextField: UITextField!
    
    @IBOutlet weak var cTextField: UITextField!
    
    @IBOutlet weak var raiz1TextField: UITextField!
    
    @IBOutlet weak var raiz2TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func resolver(_ sender: UIButton) {
        raiz1TextField.text = ""
        raiz2TextField.text = ""
        
       if let A = aTextField.text{
            if !A.isEmpty{
                if let B = bTextField.text{
                    if !B.isEmpty{
                        if let C = cTextField.text{
                            if !C.isEmpty{
                                let rootsValue = equationSolver.solve(coefficients: Coeff(a: Float16(A)!, b: Float16(B)!, c: Float16(C)!))
                                
                                if rootsValue.imaginary && rootsValue.d == 4.0 && rootsValue.root1 == 0.0 && rootsValue.root2 == 1600.0{
                                    raiz1TextField.text = "No es cuadrática"
                                    raiz2TextField.text = "No es cuadrática"
                                }else if rootsValue.imaginary{
                                    raiz1TextField.text = String(rootsValue.root1) + "+" + String(rootsValue.d) + "i"
                                    raiz2TextField.text = String(rootsValue.root2) + "-" + String(rootsValue.d) + "i"
                                }else{
                                    raiz1TextField.text = String(rootsValue.root1)
                                    raiz2TextField.text = String(rootsValue.root2)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    


    
    
    
   
}
