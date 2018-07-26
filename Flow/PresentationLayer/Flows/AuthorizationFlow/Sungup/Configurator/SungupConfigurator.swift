//
//  SungupSungupConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class SungupModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? SungupViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: SungupViewController) {

        let router = SungupRouter()

        let presenter = SungupPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = SungupInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
