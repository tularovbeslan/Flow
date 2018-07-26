//
//  ChatConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class ChatModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ChatViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ChatViewController) {

        let presenter = ChatPresenter()
        presenter.view = viewController

        let interactor = ChatInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
