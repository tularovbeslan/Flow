//
//  PasswordRecoveryViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class PasswordRecoveryViewController: UIViewController, PasswordRecoveryViewInput {

	// MARK: - Properties
	
    var output: PasswordRecoveryViewOutput!
	
	// MARK: - IBOutlets
	
	@IBOutlet weak var field: UITextField!
	@IBOutlet var labels: [UILabel]!
	@IBOutlet weak var button: UIButton!
	
    // MARK: - Life cycle
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
        output.viewIsReady()
		fieldAppearance()
		labelsAppearance()
		buttonAppearance()
    }


    // MARK: - PasswordRecoveryViewInput
	
    func setupInitialState() {
    }
	
	// MARK: - Appearance
	
	private func fieldAppearance() {
		
		field.backgroundColor = AppAppearance.UI.Filed.color
		field.layer.cornerRadius = AppAppearance.UI.Filed.radius
		field.layer.masksToBounds = true
		field.textAlignment = .center
		field.isEnabled = false
	}
	
	private func labelsAppearance() {
		
		labels.forEach { (label) in
			
			label.backgroundColor = AppAppearance.UI.Label(tag: label.tag).color
			label.layer.cornerRadius = AppAppearance.UI.Label(tag: label.tag).radius
			label.layer.masksToBounds = true
			label.textAlignment = .left
		}
	}
	
	private func buttonAppearance() {
		
		button.layer.cornerRadius = AppAppearance.UI.Button(tag: button.tag).radius
		button.layer.masksToBounds = true
		button.setTitleColor(.white, for: .normal)
		button.backgroundColor = AppAppearance.UI.Button(tag: button.tag).color
		button.setTitle("Send", for: .normal)
	}
	
	// MARK: - Actions
	
	@IBAction func send(_ sender: UIButton) {
		dismiss(animated: true, completion: nil)
	}
	
}
