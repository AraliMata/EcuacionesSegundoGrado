//
//  EcuacionesSegundoGrado_UITests.swift
//  EcuacionesSegundoGrado_UITests
//
//  Created by user189928 on 8/31/21.
//

import XCTest

class EcuacionesSegundoGrado_UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testEquationSolverThreeCoeffs() throws {
        let app = XCUIApplication()
        app.launch()
        
        let aTextField = app.textFields["aTextField"]
        let bTextField = app.textFields["bTextField"]
        let cTextField = app.textFields["cTextField"]
        let raiz1TextField = app.textFields["raiz1TextField"]
        let raiz2TextField = app.textFields["raiz2TextField"]
        
        aTextField.tap()
        aTextField.typeText("1.0")
        bTextField.tap()
        bTextField.typeText("-5.0")
        cTextField.tap()
        cTextField.typeText("6.0")
        app.staticTexts["Convertir"].tap()

        print("Raiz1 " + (raiz1TextField.value as! String))
        print("Raiz2 " + (raiz2TextField.value as! String))
        XCTAssertEqual(raiz1TextField.value as! String, "3.0")
        XCTAssertEqual(raiz2TextField.value as! String, "2.0")
        
    }
}
