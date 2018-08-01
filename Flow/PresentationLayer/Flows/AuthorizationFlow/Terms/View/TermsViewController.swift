//
//  TermsViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit
import PWSwitch

class TermsViewController: UIViewController, TermsViewInput, TermsViewCoordinatorOutput {

	// MARK: - Properties

    var output: TermsViewOutput!
	
	// MARK: - IBOutlets

	@IBOutlet var labels: [UILabel]!
	@IBOutlet weak var button: UIButton!
	@IBOutlet weak var conformSwitch: PWSwitch! {
		didSet {
			conformSwitch.on = confirmed
			button.isEnabled = confirmed
		}
	}

    // MARK: - Life cycle
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
        output.viewIsReady()
		labelsAppearance()
		buttonAppearance()
		conformSwitchAppearance()
    }

    // MARK: - TermsViewInput
	
    func setupInitialState() {
		
    }
	
	// MARK: - TermsViewCoordinatorOutput
	
	var confirmed: Bool = false
	
	var onConfirmChanged: ((Bool) -> ())?
	
	var onSignIn: (() -> Void)?
	
	// MARK: - Appearance
	
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
		button.setTitle("Accept", for: .normal)
		button.titleLabel?.font = UIFont.avertaCY(style: .semibold, size: 13)
	}
	
	private func conformSwitchAppearance() {
		
		let trackInset: CGFloat = 11
		let cornerRadius: CGFloat = 5
		let thumbDiameter: CGFloat = 16
		let thumbWidth: CGFloat = 25

		conformSwitch.trackOnBorderColor = .clear
		conformSwitch.trackOffBorderColor = .clear
		conformSwitch.trackOffFillColor = .smoothGray
		conformSwitch.trackOnFillColor = .smoothGray
		conformSwitch.trackInset = trackInset
		conformSwitch.cornerRadius = cornerRadius
		conformSwitch.thumbDiameter = thumbDiameter
		conformSwitch.thumbWidth = thumbWidth
		conformSwitch.thumbOnFillColor = .lightOrange
		conformSwitch.thumbOffFillColor = .lightRed
		conformSwitch.thumbShadowColor = .clear
		conformSwitch.thumbOnBorderColor = .clear
		conformSwitch.thumbOffBorderColor = .clear
		conformSwitch.thumbOffPushBorderColor = .clear
	}
	
	// MARK: - Actions
	
	@IBAction func conform(_ sender: PWSwitch) {
		output.onConformChanged(sender.on)
	}
	
	@IBAction func accept(_ sender: UIButton) {
		output.onAcceptTap()
	}
}
