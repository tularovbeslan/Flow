//
//  ChatPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class ChatPresenter: ChatModuleInput, ChatViewOutput, ChatInteractorOutput {

    weak var view: ChatViewInput!
    var interactor: ChatInteractorInput!

    func viewIsReady() {

    }
}
