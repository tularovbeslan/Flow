//
//  TermsInitializer.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class TermsModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var termsViewController: TermsViewController!

    override func awakeFromNib() {

        let configurator = TermsModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: termsViewController)
    }

}
