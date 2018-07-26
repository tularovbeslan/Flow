//
//  ProductPageConfiguratorTests.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import XCTest

class ProductPageModuleConfiguratorTests: XCTestCase {

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
        let viewController = ProductPageViewControllerMock()
        let configurator = ProductPageModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "ProductPageViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ProductPagePresenter, "output is not ProductPagePresenter")

        let presenter: ProductPagePresenter = viewController.output as! ProductPagePresenter
        XCTAssertNotNil(presenter.view, "view in ProductPagePresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in ProductPagePresenter is nil after configuration")
        XCTAssertTrue(presenter.router is ProductPageRouter, "router is not ProductPageRouter")

        let interactor: ProductPageInteractor = presenter.interactor as! ProductPageInteractor
        XCTAssertNotNil(interactor.output, "output in ProductPageInteractor is nil after configuration")
    }

    class ProductPageViewControllerMock: ProductPageViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
