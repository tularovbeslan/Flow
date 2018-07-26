//
//  SungupSungupConfiguratorTests.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class SungupModuleConfiguratorTests: XCTestCase {

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
        let viewController = SungupViewControllerMock()
        let configurator = SungupModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "SungupViewController is nil after configuration")
        XCTAssertTrue(viewController.output is SungupPresenter, "output is not SungupPresenter")

        let presenter: SungupPresenter = viewController.output as! SungupPresenter
        XCTAssertNotNil(presenter.view, "view in SungupPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in SungupPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is SungupRouter, "router is not SungupRouter")

        let interactor: SungupInteractor = presenter.interactor as! SungupInteractor
        XCTAssertNotNil(interactor.output, "output in SungupInteractor is nil after configuration")
    }

    class SungupViewControllerMock: SungupViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
