//
//  OpTests.swift
//  CalculatorTests
//
//  Created by student on 10/10/2023.
//

import XCTest
@testable import Calculator
final class OpTests: XCTestCase {

    func testPositiveScenarioForAddCalculation(){
        let operation = Operations()
        let x1=1;
        let x2=2;
        let znak = "+"
        let wynik = operation.oblicz(leftSize: x1, znak: znak, rightSize: x2)
        XCTAssertEqual(3, wynik)
    }
    func testNegativeScenarioForAddCalculation(){
        let operation = Operations()
        let x1=1;
        let x2=2;
        let znak = "+"
        let wynik = operation.oblicz(leftSize: x1, znak: znak, rightSize: x2)
        XCTAssertNotEqual(-3, wynik)
    }
    
    func testPositiveScenarioForSubCalculation(){
        let operation = Operations()
        let x1=1;
        let x2=2;
        let znak = "-"
        let wynik = operation.oblicz(leftSize: x1, znak: znak, rightSize: x2)
        XCTAssertEqual(-1, wynik)
    }
    
    func testNegativeScenarioForSubCalculation(){
        let operation = Operations()
        let x1=1;
        let x2=2;
        let znak = "-"
        let wynik = operation.oblicz(leftSize: x1, znak: znak, rightSize: x2)
        XCTAssertNotEqual(4, wynik)
    }
    
    func testPositiveScenarioForProdCalculation(){
        let operation = Operations()
        let x1=1;
        let x2=2;
        let znak = "*"
        let wynik = operation.oblicz(leftSize: x1, znak: znak, rightSize: x2)
        XCTAssertEqual(2, wynik)
    }
    
    func testNegativeScenarioForProdCalculation(){
        let operation = Operations()
        let x1=1;
        let x2=2;
        let znak = "*"
        let wynik = operation.oblicz(leftSize: x1, znak: znak, rightSize: x2)
        XCTAssertNotEqual(-2, wynik)
    }
    
    func testPositiveScenarioForDivCalculation(){
        let operation = Operations()
        let x1=4;
        let x2=2;
        let znak = "/"
        let wynik = operation.oblicz(leftSize: x1, znak: znak, rightSize: x2)
        XCTAssertEqual(2, wynik)
    }
    
    func testZeroScenarioForDivCalculation(){
        let operation = Operations()
        let x1=4;
        let x2=0;
        let znak = "/"
        let wynik = operation.oblicz(leftSize: x1, znak: znak, rightSize: x2)
        XCTAssertNil(wynik)
    }
    
    func testPositiveScenarioForSinCalculation(){
        let operation = Operations()
        let x1=0;
        let x2=2;
        let znak = "sin"
        let wynik = operation.oblicz(leftSize: x1, znak: znak, rightSize: x2)
        XCTAssertEqual(0, wynik)
    }
}
