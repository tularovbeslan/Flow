//
//  ChatChatPresenterTests.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class ChatPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: ChatInteractorInput {

    }

    class MockRouter: ChatRouterInput {

    }

    class MockViewController: ChatViewInput {

        func setupInitialState() {

        }
    }
}
