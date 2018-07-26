//
//  FeedFeedConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class FeedModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? FeedViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: FeedViewController) {

        let router = FeedRouter()

        let presenter = FeedPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = FeedInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
