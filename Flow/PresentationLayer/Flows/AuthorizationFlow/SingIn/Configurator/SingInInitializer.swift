//
//  SingInInitializer.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class SingInModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var singinViewController: SingInViewController!

    override func awakeFromNib() {

        let configurator = SingInModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: singinViewController)
    }

}
