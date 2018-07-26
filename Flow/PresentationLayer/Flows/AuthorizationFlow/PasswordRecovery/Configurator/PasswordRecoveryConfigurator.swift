//
//  PasswordRecoveryConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class PasswordRecoveryModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? PasswordRecoveryViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: PasswordRecoveryViewController) {

        let presenter = PasswordRecoveryPresenter()
        presenter.view = viewController

        let interactor = PasswordRecoveryInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
