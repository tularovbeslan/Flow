//
//  ChatChatInitializer.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class ChatModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var chatViewController: ChatViewController!

    override func awakeFromNib() {

        let configurator = ChatModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: chatViewController)
    }

}
