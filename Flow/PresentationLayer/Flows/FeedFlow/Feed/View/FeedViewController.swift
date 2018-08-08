//
//  FeedViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit
import FSPagerView

class FeedViewController: UIViewController, FeedViewInput, FeedViewCoordinatorOutput {

	// MARK: - Properties

    var output: FeedViewOutput!
	let pagerReuseIdentifier: String = "pager"
	let interitemSpacing: CGFloat = 20
	let lineSpacing: CGFloat = 30
	let numberOfItems: Int = 3

	
	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var pager: FSPagerView!
	@IBOutlet weak var collectionView: UICollectionView!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
		
        output.viewDidLoad()
    }
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
		setupPager()
	}


    // MARK: - FeedViewInput
	
    func setupInitialState() {
		
		setupCollectionView()
		labelsAppearance()
		tabbarItemAppearance()
    }
	
	// MARK: FeedViewCoordinatorOutput
	
	var onItemSelected: (() -> Void)?
	
	// MARK: - Helpers
	
	private func setupPager() {
		
		pager.dataSource = self
		pager.register(FSPagerViewCell.self, forCellWithReuseIdentifier: pagerReuseIdentifier)
		pager.interitemSpacing = interitemSpacing
		pager.itemSize = pager.frame.size.applying(CGAffineTransform(scaleX: 0.8, y: 0.9))
	}
	
	private func setupCollectionView() {
		
		let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
		layout?.minimumInteritemSpacing = lineSpacing
		layout?.minimumLineSpacing = lineSpacing
		collectionView.collectionViewLayout = layout!
		collectionView.delegate = self
		collectionView.dataSource = self
		collectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 30, right: 0)
		
	}
	
	// MARK: - Appearance
	
	private func labelsAppearance() {
		
		label.backgroundColor = AppAppearance.UI.Label(tag: label.tag).color
		label.layer.cornerRadius = AppAppearance.UI.Label(tag: label.tag).radius
		label.layer.masksToBounds = true
		label.textAlignment = .left
	}
	
	private func tabbarItemAppearance() {
		
		navigationController?.tabBarItem = UITabBarItem(title: title, image: #imageLiteral(resourceName: "oval"), selectedImage: #imageLiteral(resourceName: "selectedOval"))
	}

}

extension FeedViewController: FSPagerViewDataSource {
	
	func numberOfItems(in pagerView: FSPagerView) -> Int {
		return numberOfItems
	}
	
	public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
		
		let cell = pagerView.dequeueReusableCell(withReuseIdentifier: pagerReuseIdentifier, at: index)
		cell.imageView?.image = #imageLiteral(resourceName: "photo")
		cell.imageView?.tintColor = .lightRed
		cell.imageView?.contentMode = .center
		cell.imageView?.backgroundColor = AppAppearance.UI.Image.color
		cell.imageView?.layer.cornerRadius = AppAppearance.UI.Image.radius
		cell.imageView?.layer.masksToBounds = true
		cell.contentView.layer.shadowColor = UIColor.clear.cgColor
		return cell
	}
}

extension FeedViewController: UICollectionViewDataSource {
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 8
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		return collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FeedCell.self), for: indexPath)
	}
}

extension FeedViewController: UICollectionViewDelegate {
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		output.didSelectItem()
	}
}

extension FeedViewController: UICollectionViewDelegateFlowLayout {
	
	var height: CGFloat { return 170 }
	var width: CGFloat {
		return ((collectionView.frame.width / 2) - lineSpacing) - (lineSpacing / 2)
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		
		return CGSize(width: width, height: height)
	}
}
