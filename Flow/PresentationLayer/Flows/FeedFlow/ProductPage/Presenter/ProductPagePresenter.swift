//
//  ProductPagePresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class ProductPagePresenter: ProductPageModuleInput, ProductPageViewOutput, ProductPageInteractorOutput {

    weak var view: ProductPageViewInput!
	weak var coordinator: ProductPageViewCoordinatorOutput!
    var interactor: ProductPageInteractorInput!

	func viewDidLoad() {
		view.setupInitialState()
	}
	
	func addToCart() {
		coordinator.onCart?()
	}
	
	func back() {
		coordinator.onBack?()
	}
}
