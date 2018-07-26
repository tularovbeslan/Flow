//
//  SingInConfiguratorTests.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class SingInModuleConfiguratorTests: XCTestCase {

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
        let viewController = SingInViewControllerMock()
        let configurator = SingInModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "SingInViewController is nil after configuration")
        XCTAssertTrue(viewController.output is SingInPresenter, "output is not SingInPresenter")

        let presenter: SingInPresenter = viewController.output as! SingInPresenter
        XCTAssertNotNil(presenter.view, "view in SingInPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in SingInPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is SingInRouter, "router is not SingInRouter")

        let interactor: SingInInteractor = presenter.interactor as! SingInInteractor
        XCTAssertNotNil(interactor.output, "output in SingInInteractor is nil after configuration")
    }

    class SingInViewControllerMock: SingInViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
