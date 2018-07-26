//
//  OnboardingOnboardingConfiguratorTests.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class OnboardingModuleConfiguratorTests: XCTestCase {

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
        let viewController = OnboardingViewControllerMock()
        let configurator = OnboardingModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "OnboardingViewController is nil after configuration")
        XCTAssertTrue(viewController.output is OnboardingPresenter, "output is not OnboardingPresenter")

        let presenter: OnboardingPresenter = viewController.output as! OnboardingPresenter
        XCTAssertNotNil(presenter.view, "view in OnboardingPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in OnboardingPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is OnboardingRouter, "router is not OnboardingRouter")

        let interactor: OnboardingInteractor = presenter.interactor as! OnboardingInteractor
        XCTAssertNotNil(interactor.output, "output in OnboardingInteractor is nil after configuration")
    }

    class OnboardingViewControllerMock: OnboardingViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
