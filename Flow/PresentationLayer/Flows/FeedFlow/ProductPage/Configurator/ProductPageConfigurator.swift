//
//  ProductPageConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
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

        let presenter = ProductPagePresenter()
        presenter.view = viewController

        let interactor = ProductPageInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
