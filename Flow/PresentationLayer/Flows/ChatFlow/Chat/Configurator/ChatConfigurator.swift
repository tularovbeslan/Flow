//
//  ChatChatConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
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

        let router = ChatRouter()

        let presenter = ChatPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ChatInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
