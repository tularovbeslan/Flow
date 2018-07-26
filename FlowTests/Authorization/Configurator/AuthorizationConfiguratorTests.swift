//
//  AuthorizationAuthorizationConfiguratorTests.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class AuthorizationModuleConfiguratorTests: XCTestCase {

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
        let viewController = AuthorizationViewControllerMock()
        let configurator = AuthorizationModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "AuthorizationViewController is nil after configuration")
        XCTAssertTrue(viewController.output is AuthorizationPresenter, "output is not AuthorizationPresenter")

        let presenter: AuthorizationPresenter = viewController.output as! AuthorizationPresenter
        XCTAssertNotNil(presenter.view, "view in AuthorizationPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in AuthorizationPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is AuthorizationRouter, "router is not AuthorizationRouter")

        let interactor: AuthorizationInteractor = presenter.interactor as! AuthorizationInteractor
        XCTAssertNotNil(interactor.output, "output in AuthorizationInteractor is nil after configuration")
    }

    class AuthorizationViewControllerMock: AuthorizationViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
