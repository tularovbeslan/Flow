//
//  FeedViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, FeedViewInput {

    var output: FeedViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: FeedViewInput
    func setupInitialState() {
    }
}
