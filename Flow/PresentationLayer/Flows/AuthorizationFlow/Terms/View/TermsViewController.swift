//
//  TermsTermsViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController, TermsViewInput {

    var output: TermsViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: TermsViewInput
    func setupInitialState() {
    }
}
