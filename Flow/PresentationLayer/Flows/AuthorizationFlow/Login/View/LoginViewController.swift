//
//  LoginLoginViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginViewInput {

    var output: LoginViewOutput!
	
	@IBOutlet weak var photo: UIImageView!
	@IBOutlet var fields: [UIImageView]!
	@IBOutlet var buttons: [UIButton]!
	
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
		photoAppearance()
		fieldsAppearance()
		buttonsAppearance()
    }


    // MARK: LoginViewInput
    func setupInitialState() {
		
    }
	
	// MARK: - Appearance
	private func photoAppearance() {
		photo.image = #imageLiteral(resourceName: "photo")
		photo.backgroundColor = UIColor(red: 241/255, green: 241/255, blue: 241/255, alpha: 1)
		photo.layer.cornerRadius = 30
		photo.layer.masksToBounds = true
	}
	
	private func fieldsAppearance() {
		fields.forEach { (field) in
			field.backgroundColor = UIColor(red: 241/255, green: 241/255, blue: 241/255, alpha: 1)
			field.layer.cornerRadius = 20
			field.layer.masksToBounds = true
		}
	}
	
	private func buttonsAppearance() {
		buttons.forEach { (button) in
			button.layer.cornerRadius = 25
			button.layer.masksToBounds = true
			button.setTitleColor(.white, for: .normal)
			switch button.tag {
			case 0:
				button.backgroundColor = UIColor(red: 229/255, green: 98/255, blue: 92/255, alpha: 1)
				button.setTitle("Sing in", for: .normal)
			case 1:
				button.backgroundColor = UIColor(red: 249/255, green: 191/255, blue: 118/255, alpha: 1)
				button.setTitle("Forgot", for: .normal)
			case 2:
				button.backgroundColor = UIColor(red: 97/255, green: 83/255, blue: 117/255, alpha: 1)
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
	}
	
	@IBAction func singUp(_ sender: UIButton) {
	}
	
	
	
	
}
