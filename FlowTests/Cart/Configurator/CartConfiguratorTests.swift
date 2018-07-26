//
//  CartConfiguratorTests.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class CartModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = CartViewControllerMock()
        let configurator = CartModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "CartViewController is nil after configuration")
        XCTAssertTrue(viewController.output is CartPresenter, "output is not CartPresenter")

        let presenter: CartPresenter = viewController.output as! CartPresenter
        XCTAssertNotNil(presenter.view, "view in CartPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in CartPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is CartRouter, "router is not CartRouter")

        let interactor: CartInteractor = presenter.interactor as! CartInteractor
        XCTAssertNotNil(interactor.output, "output in CartInteractor is nil after configuration")
    }

    class CartViewControllerMock: CartViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
