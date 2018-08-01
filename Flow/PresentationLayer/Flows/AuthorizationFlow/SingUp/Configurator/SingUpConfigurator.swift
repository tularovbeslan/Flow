//
//  SingUpConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class SingUpModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? SingUpViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: SingUpViewController) {

        let presenter = SingUpPresenter()
        presenter.view = viewController
		presenter.coordinator = viewController

        let interactor = SingUpInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
