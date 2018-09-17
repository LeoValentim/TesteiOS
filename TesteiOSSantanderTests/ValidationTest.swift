//
//  ValidationTest.swift
//  TesteiOSSantanderTests
//
//  Created by Mac on 17/09/2018.
//  Copyright © 2018 Leo Valentim. All rights reserved.
//

import XCTest
@testable import TesteiOSSantander

class ValidationTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testValidEmailTrue() {
        let textfield = UITextField()
        textfield.text = "email@email.com"
        XCTAssertEqual(textfield.text?.isValidEmail, true)
    }
    
    func testValidEmailFalse(){
        let textfield = UITextField()
        textfield.text = "email@email"
        XCTAssertEqual(textfield.text?.isValidEmail, false)
    }
    
    func testValidCelPhoneTrue(){
        let textfield = UITextField()
        textfield.text = "11999999999"
        XCTAssertEqual(textfield.text?.isValidPhone, true)
    }
    
    func testValidTelPhoneTrue(){
        let textfield = UITextField()
        textfield.text = "1199999999"
        XCTAssertEqual(textfield.text?.isValidPhone, true)
    }
    
    func testValidPhoneFalse(){
        let textfield = UITextField()
        textfield.text = "12345"
        XCTAssertEqual(textfield.text?.isValidPhone, false)
    }
    
}
