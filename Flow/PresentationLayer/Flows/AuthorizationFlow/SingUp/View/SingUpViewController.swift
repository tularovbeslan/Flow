//
//  SingUpViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class SingUpViewController: UIViewController, SingUpViewInput {

	// MARK: - Properties
	
    var output: SingUpViewOutput!
	
	// MARK: - IBOutlets
	
	@IBOutlet var labels: [UILabel]!
	@IBOutlet var fields: [UITextField]!
	@IBOutlet var buttons: [UIButton]!

    // MARK: Life cycle
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
        output.viewIsReady()
		labelsAppearance()
		fieldsAppearance()
		buttonsAppearance()
    }


    // MARK: SingUpViewInput
	
    func setupInitialState() {
		
    }
	
	// MARK: - Appearance
	
	private func labelsAppearance() {
		
		labels.forEach { (label) in
			
			label.backgroundColor = AppAppearance.UI.Label(tag: label.tag).color
			label.layer.cornerRadius = AppAppearance.UI.Label(tag: label.tag).radius
			label.layer.masksToBounds = true
			label.textAlignment = .left
		}
	}
	
	private func fieldsAppearance() {
		
		fields.forEach { (field) in
			
			field.backgroundColor = AppAppearance.UI.Filed.color
			field.layer.cornerRadius = AppAppearance.UI.Filed.radius
			field.layer.masksToBounds = true
			field.textAlignment = .center
			field.isEnabled = false
		}
	}
	
	private func buttonsAppearance() {
		
		buttons.forEach { (button) in
			
			button.layer.cornerRadius = AppAppearance.UI.Button(tag: button.tag).radius
			button.layer.masksToBounds = true
			button.setTitleColor(.white, for: .normal)
			button.backgroundColor = AppAppearance.UI.Button(tag: button.tag).color
			button.titleLabel?.font = UIFont.avertaCY(style: .semibold, size: 13)

			switch button.tag {
			case 0:
				button.setTitle("Sing up", for: .normal)
			case 1:
				button.setTitle("Sing in", for: .normal)
			case 2:
				button.setTitle("Terms", for: .normal)
			default:
				break
			}
		}
	}
	
	// MARK: - Actions
	
	@IBAction func singUp(_ sender: UIButton) {
		
	}
	
	@IBAction func singIn(_ sender: UIButton) {
		
		dismiss(animated: true, completion: nil)
	}
	
	@IBAction func terms(_ sender: UIButton) {
		
		let vc = storyboard!.instantiateViewController(withIdentifier: String(describing: TermsViewController.self))
		present(vc, animated: true, completion: nil)

	}
}
