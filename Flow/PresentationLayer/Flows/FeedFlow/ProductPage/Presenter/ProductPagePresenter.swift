//
//  ProductPageProductPagePresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class ProductPagePresenter: ProductPageModuleInput, ProductPageViewOutput, ProductPageInteractorOutput {

    weak var view: ProductPageViewInput!
    var interactor: ProductPageInteractorInput!
    var router: ProductPageRouterInput!

    func viewIsReady() {

    }
}
