//
//  SingInConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class SingInModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? SingInViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: SingInViewController) {

        let presenter = SingInPresenter()
        presenter.view = viewController
		presenter.coordinator = viewController
		
        let interactor = SingInInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
