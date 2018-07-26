//
//  CartCartInitializer.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class CartModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var cartViewController: CartViewController!

    override func awakeFromNib() {

        let configurator = CartModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: cartViewController)
    }

}
