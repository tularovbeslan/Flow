//
//  SingInViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class SingInViewController: UIViewController, SingInViewInput {

	// MARK: - Properties
    var output: SingInViewOutput!
	
	// MARK: - IBOutlets
	@IBOutlet weak var photo: UIImageView!
	@IBOutlet var fields: [UITextField]!
	@IBOutlet var buttons: [UIButton]!
	
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
		
        output.viewIsReady()
		photoAppearance()
		fieldsAppearance()
		buttonsAppearance()
    }


    // MARK: - LoginViewInput
    func setupInitialState() {
		
    }
	
	// MARK: - Appearance
	private func photoAppearance() {
		
		photo.image = #imageLiteral(resourceName: "photo")
		photo.backgroundColor = AppAppearance.UI.Image.color
		photo.layer.cornerRadius = AppAppearance.UI.Image.radius
		photo.layer.masksToBounds = true
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

			switch button.tag {
			case 0:
				button.setTitle("Sing in", for: .normal)
			case 1:
				button.setTitle("Forgot", for: .normal)
			case 2:
				button.setTitle("Sing up", for: .normal)
			default:
				break
			}
		}
	}
	
	// MARK: - Actions
	@IBAction func singIn(_ sender: UIButton) {
		
	}
	
	@IBAction func forgot(_ sender: UIButton) {
		let storyBoard = UIStoryboard(name: String(describing: PasswordRecoveryViewController.self), bundle: nil)
		let vc = storyBoard.instantiateViewController(withIdentifier: String(describing: PasswordRecoveryViewController.self))
		present(vc, animated: true, completion: nil)
	}
	
	@IBAction func singUp(_ sender: UIButton) {
		
	}
}
