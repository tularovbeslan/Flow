//
//  OnboardingOnboardingPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class OnboardingPresenter: OnboardingModuleInput, OnboardingViewOutput, OnboardingInteractorOutput {

    weak var view: OnboardingViewInput!
    var interactor: OnboardingInteractorInput!
    var router: OnboardingRouterInput!

    func viewIsReady() {

    }
}
