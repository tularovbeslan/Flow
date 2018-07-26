//
//  OnboardingConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class OnboardingModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? OnboardingViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: OnboardingViewController) {

        let presenter = OnboardingPresenter()
        presenter.view = viewController

        let interactor = OnboardingInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
