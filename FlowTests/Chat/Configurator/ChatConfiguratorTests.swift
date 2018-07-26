//
//  ChatChatConfiguratorTests.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class ChatModuleConfiguratorTests: XCTestCase {

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
        let viewController = ChatViewControllerMock()
        let configurator = ChatModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "ChatViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ChatPresenter, "output is not ChatPresenter")

        let presenter: ChatPresenter = viewController.output as! ChatPresenter
        XCTAssertNotNil(presenter.view, "view in ChatPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in ChatPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is ChatRouter, "router is not ChatRouter")

        let interactor: ChatInteractor = presenter.interactor as! ChatInteractor
        XCTAssertNotNil(interactor.output, "output in ChatInteractor is nil after configuration")
    }

    class ChatViewControllerMock: ChatViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
