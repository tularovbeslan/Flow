//
//  ProductPageInitializer.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class ProductPageModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var productpageViewController: ProductPageViewController!

    override func awakeFromNib() {

        let configurator = ProductPageModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: productpageViewController)
    }

}
