//
//  FeedFeedPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class FeedPresenter: FeedModuleInput, FeedViewOutput, FeedInteractorOutput {

    weak var view: FeedViewInput!
    var interactor: FeedInteractorInput!
    var router: FeedRouterInput!

    func viewIsReady() {

    }
}
