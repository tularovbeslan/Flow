//
//  SungupSungupPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class SungupPresenter: SungupModuleInput, SungupViewOutput, SungupInteractorOutput {

    weak var view: SungupViewInput!
    var interactor: SungupInteractorInput!
    var router: SungupRouterInput!

    func viewIsReady() {

    }
}
