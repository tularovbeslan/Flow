//
//  FeedFeedInitializer.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class FeedModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var feedViewController: FeedViewController!

    override func awakeFromNib() {

        let configurator = FeedModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: feedViewController)
    }

}
