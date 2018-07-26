//
//  SungupSungupInitializer.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class SungupModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var sungupViewController: SungupViewController!

    override func awakeFromNib() {

        let configurator = SungupModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: sungupViewController)
    }

}
