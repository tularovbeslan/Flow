//
//  OnboardingViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController, OnboardingViewInput {

    var output: OnboardingViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: OnboardingViewInput
    func setupInitialState() {
    }
}
