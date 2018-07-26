//
//  AuthorizationAuthorizationViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class AuthorizationViewController: UIViewController, AuthorizationViewInput {

    var output: AuthorizationViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: AuthorizationViewInput
    func setupInitialState() {
    }
}
