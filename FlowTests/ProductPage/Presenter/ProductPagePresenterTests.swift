//
//  ProductPageProductPagePresenterTests.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class ProductPagePresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: ProductPageInteractorInput {

    }

    class MockRouter: ProductPageRouterInput {

    }

    class MockViewController: ProductPageViewInput {

        func setupInitialState() {

        }
    }
}
