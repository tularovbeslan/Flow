//
//  PasswordRecoveryInitializer.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class PasswordRecoveryModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var passwordrecoveryViewController: PasswordRecoveryViewController!

    override func awakeFromNib() {

        let configurator = PasswordRecoveryModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: passwordrecoveryViewController)
    }

}
