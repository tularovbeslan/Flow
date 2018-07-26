//
//  ProfileConfiguratorTests.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class ProfileModuleConfiguratorTests: XCTestCase {

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
        let viewController = ProfileViewControllerMock()
        let configurator = ProfileModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "ProfileViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ProfilePresenter, "output is not ProfilePresenter")

        let presenter: ProfilePresenter = viewController.output as! ProfilePresenter
        XCTAssertNotNil(presenter.view, "view in ProfilePresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in ProfilePresenter is nil after configuration")
        XCTAssertTrue(presenter.router is ProfileRouter, "router is not ProfileRouter")

        let interactor: ProfileInteractor = presenter.interactor as! ProfileInteractor
        XCTAssertNotNil(interactor.output, "output in ProfileInteractor is nil after configuration")
    }

    class ProfileViewControllerMock: ProfileViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
