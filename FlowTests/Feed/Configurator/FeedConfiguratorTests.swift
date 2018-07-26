//
//  FeedConfiguratorTests.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class FeedModuleConfiguratorTests: XCTestCase {

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
        let viewController = FeedViewControllerMock()
        let configurator = FeedModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "FeedViewController is nil after configuration")
        XCTAssertTrue(viewController.output is FeedPresenter, "output is not FeedPresenter")

        let presenter: FeedPresenter = viewController.output as! FeedPresenter
        XCTAssertNotNil(presenter.view, "view in FeedPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in FeedPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is FeedRouter, "router is not FeedRouter")

        let interactor: FeedInteractor = presenter.interactor as! FeedInteractor
        XCTAssertNotNil(interactor.output, "output in FeedInteractor is nil after configuration")
    }

    class FeedViewControllerMock: FeedViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
