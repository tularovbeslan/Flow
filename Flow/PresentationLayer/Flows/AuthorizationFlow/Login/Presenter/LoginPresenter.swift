//
//  LoginLoginPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class LoginPresenter: LoginModuleInput, LoginViewOutput, LoginInteractorOutput {

    weak var view: LoginViewInput!
    var interactor: LoginInteractorInput!
    var router: LoginRouterInput!

    func viewIsReady() {
		
    }
}
