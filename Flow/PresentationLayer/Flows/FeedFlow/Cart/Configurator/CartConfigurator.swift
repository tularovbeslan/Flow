//
//  CartConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
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

        let presenter = CartPresenter()
        presenter.view = viewController

        let interactor = CartInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
