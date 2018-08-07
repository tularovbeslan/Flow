//
//  FeedPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class FeedPresenter: FeedModuleInput, FeedViewOutput, FeedInteractorOutput {

	// MARK: - Properties
	
    weak var view: FeedViewInput!
	weak var coordinator: FeedViewCoordinatorOutput!
    var interactor: FeedInteractorInput!

	// MARK: - FeedInteractorOutput
	
	func viewDidLoad() {
		view.setupInitialState()
	}
	
	func didSelectItem() {
		coordinator.onItemSelected?()
	}
}
