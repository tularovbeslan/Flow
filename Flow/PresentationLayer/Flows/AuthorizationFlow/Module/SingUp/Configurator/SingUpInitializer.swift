//
//  SingUpInitializer.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class SingUpModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var singupViewController: SingUpViewController!

    override func awakeFromNib() {

        let configurator = SingUpModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: singupViewController)
    }

}
