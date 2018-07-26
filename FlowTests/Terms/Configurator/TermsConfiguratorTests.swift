//
//  TermsTermsConfiguratorTests.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class TermsModuleConfiguratorTests: XCTestCase {

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
        let viewController = TermsViewControllerMock()
        let configurator = TermsModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "TermsViewController is nil after configuration")
        XCTAssertTrue(viewController.output is TermsPresenter, "output is not TermsPresenter")

        let presenter: TermsPresenter = viewController.output as! TermsPresenter
        XCTAssertNotNil(presenter.view, "view in TermsPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in TermsPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is TermsRouter, "router is not TermsRouter")

        let interactor: TermsInteractor = presenter.interactor as! TermsInteractor
        XCTAssertNotNil(interactor.output, "output in TermsInteractor is nil after configuration")
    }

    class TermsViewControllerMock: TermsViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
