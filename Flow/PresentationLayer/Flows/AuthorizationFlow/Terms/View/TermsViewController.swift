//
//  TermsViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit
import PWSwitch

class TermsViewController: UIViewController, TermsViewInput {

	// MARK: - Properties

    var output: TermsViewOutput!
	
	// MARK: - IBOutlets

	@IBOutlet var labels: [UILabel]!
	@IBOutlet weak var button: UIButton!
	@IBOutlet weak var conformSwitch: PWSwitch!

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
		
	}
	
	@IBAction func accept(_ sender: UIButton) {
		dismiss(animated: true, completion: nil)
	}
}
