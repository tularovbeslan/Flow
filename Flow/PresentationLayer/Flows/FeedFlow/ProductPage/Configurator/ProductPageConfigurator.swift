//
//  ProductPageProductPageConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class ProductPageModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ProductPageViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ProductPageViewController) {

        let router = ProductPageRouter()

        let presenter = ProductPagePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ProductPageInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
