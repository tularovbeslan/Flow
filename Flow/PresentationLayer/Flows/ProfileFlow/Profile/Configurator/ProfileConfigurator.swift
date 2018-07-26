//
//  ProfileConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class ProfileModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ProfileViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ProfileViewController) {

        let presenter = ProfilePresenter()
        presenter.view = viewController

        let interactor = ProfileInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
