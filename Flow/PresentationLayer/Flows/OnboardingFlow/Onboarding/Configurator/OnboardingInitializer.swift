//
//  OnboardingOnboardingInitializer.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class OnboardingModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var onboardingViewController: OnboardingViewController!

    override func awakeFromNib() {

        let configurator = OnboardingModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: onboardingViewController)
    }

}
