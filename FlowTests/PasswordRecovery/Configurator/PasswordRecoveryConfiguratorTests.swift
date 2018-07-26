//
//  PasswordRecoveryConfiguratorTests.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class PasswordRecoveryModuleConfiguratorTests: XCTestCase {

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
        let viewController = PasswordRecoveryViewControllerMock()
        let configurator = PasswordRecoveryModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "PasswordRecoveryViewController is nil after configuration")
        XCTAssertTrue(viewController.output is PasswordRecoveryPresenter, "output is not PasswordRecoveryPresenter")

        let presenter: PasswordRecoveryPresenter = viewController.output as! PasswordRecoveryPresenter
        XCTAssertNotNil(presenter.view, "view in PasswordRecoveryPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in PasswordRecoveryPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is PasswordRecoveryRouter, "router is not PasswordRecoveryRouter")

        let interactor: PasswordRecoveryInteractor = presenter.interactor as! PasswordRecoveryInteractor
        XCTAssertNotNil(interactor.output, "output in PasswordRecoveryInteractor is nil after configuration")
    }

    class PasswordRecoveryViewControllerMock: PasswordRecoveryViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
