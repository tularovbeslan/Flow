//
//  CartCartConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class CartModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? CartViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: CartViewController) {

        let router = CartRouter()

        let presenter = CartPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = CartInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
