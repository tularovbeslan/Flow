//
//  SingUpConfiguratorTests.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class SingUpModuleConfiguratorTests: XCTestCase {

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
        let viewController = SingUpViewControllerMock()
        let configurator = SingUpModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "SingUpViewController is nil after configuration")
        XCTAssertTrue(viewController.output is SingUpPresenter, "output is not SingUpPresenter")

        let presenter: SingUpPresenter = viewController.output as! SingUpPresenter
        XCTAssertNotNil(presenter.view, "view in SingUpPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in SingUpPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is SingUpRouter, "router is not SingUpRouter")

        let interactor: SingUpInteractor = presenter.interactor as! SingUpInteractor
        XCTAssertNotNil(interactor.output, "output in SingUpInteractor is nil after configuration")
    }

    class SingUpViewControllerMock: SingUpViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
