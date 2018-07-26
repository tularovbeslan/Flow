//
//  FeedPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class FeedPresenter: FeedModuleInput, FeedViewOutput, FeedInteractorOutput {

    weak var view: FeedViewInput!
    var interactor: FeedInteractorInput!

    func viewIsReady() {

    }
}
