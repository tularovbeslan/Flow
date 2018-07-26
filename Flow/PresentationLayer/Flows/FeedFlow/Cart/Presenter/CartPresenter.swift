//
//  CartCartPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class CartPresenter: CartModuleInput, CartViewOutput, CartInteractorOutput {

    weak var view: CartViewInput!
    var interactor: CartInteractorInput!
    var router: CartRouterInput!

    func viewIsReady() {

    }
}
