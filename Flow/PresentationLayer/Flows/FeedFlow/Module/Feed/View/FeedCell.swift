//
//  FeedCell.swift
//  Flow
//
//  Created by workmachine on 31.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit

class FeedCell: UICollectionViewCell {
	
	// MARK: - IBOutlets
	
	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var photo: UIImageView!
	
	// MARK: - Life cycle

	override func awakeFromNib() {
		super.awakeFromNib()
		
		labelAppearance()
		photoAppearance()
	}
	
	// MARK: - Appearance

	private func labelAppearance() {
		
		label.backgroundColor = AppAppearance.UI.Label(tag: label.tag).color
		label.layer.cornerRadius = AppAppearance.UI.Label(tag: label.tag).radius
		label.layer.masksToBounds = true
		label.textAlignment = .left
	}
	
	private func photoAppearance() {
		
		photo.image = #imageLiteral(resourceName: "photo").withRenderingMode(.alwaysTemplate)
		photo.tintColor = .lightRed
		photo.contentMode = .center
		photo.backgroundColor = AppAppearance.UI.Image.color
		photo.layer.cornerRadius = AppAppearance.UI.Image.radius
		photo.layer.masksToBounds = true
	}
}
