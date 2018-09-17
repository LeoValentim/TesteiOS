//
//  TesteiOSSantanderTests.swift
//  TesteiOSSantanderTests
//
//  Created by Mac on 11/08/2018.
//  Copyright © 2018 Leo Valentim. All rights reserved.
//

import XCTest
@testable import TesteiOSSantander

class TesteiOSSantanderTests: XCTestCase {
    
    var formTableViewController: FormTableViewController!
    
    override func setUp() {
        super.setUp()
        
        let formModel = FormModelTest()
        let formPresenter = FormPresenter(with: formModel)
        formTableViewController = FormTableViewController(presenter: formPresenter)
        _ = formTableViewController.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testValidFields() {
        for i in 0...formTableViewController.presenter.model.cells.count {
            guard let cell = formTableViewController.presenter.cell(for: i),
                let id = cell.id else {
                    continue
            }
            
            if cell.type == .field {
                switch cell.typefield {
                case .email?:
                    formTableViewController.presenter.changeValueCell(id: id, value: "teste@email.com")
                case .telNumber?:
                    formTableViewController.presenter.changeValueCell(id: id, value: "(11)99999-9999")
                case .text?:
                    formTableViewController.presenter.changeValueCell(id: id, value: "Nome")
                default:
                    break
                }
            }
        }
        
        XCTAssertEqual(formTableViewController.presenter.validFields(), true)
    }
}
