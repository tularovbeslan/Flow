//
//  AuthorizationAuthorizationInitializer.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class AuthorizationModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var authorizationViewController: AuthorizationViewController!

    override func awakeFromNib() {

        let configurator = AuthorizationModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: authorizationViewController)
    }

}
