//
//  OnboardingViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit
import FSPagerView

class OnboardingViewController: UIViewController, OnboardingViewInput {

	// MARK: - Properties

    var output: OnboardingViewOutput!
	let pagerReuseIdentifier: String = "pager"
	let interitemSpacing: CGFloat = 20
	let itemSpacing: CGFloat = 30
	let numberOfItems: Int = 3

	
	// MARK: - IBOutlets

	@IBOutlet var labels: [UILabel]!
	@IBOutlet weak var pager: FSPagerView!
	@IBOutlet weak var pageControl: FSPageControl!
	@IBOutlet weak var button: UIButton!
	@IBOutlet weak var bottomConstraint: NSLayoutConstraint!
	
    // MARK: - Life cycle
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
        output.viewIsReady()
		labelsAppearance()
		buttonAppearance()
		setupPager()
		setupPageControl()
    }


    // MARK: - OnboardingViewInput
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
		button.setTitle("Next", for: .normal)
	}
	
	// MARK: - Helpers

	private func setupPager() {
		
		pager.delegate = self
		pager.dataSource = self
		pager.register(FSPagerViewCell.self, forCellWithReuseIdentifier: pagerReuseIdentifier)
		pager.interitemSpacing = interitemSpacing
		pager.itemSize = pager.frame.size.applying(CGAffineTransform(scaleX: 0.8, y: 0.9))
	}
	
	private func setupPageControl() {
		
		pageControl.numberOfPages = 3
		pageControl.currentPage = 0
		pageControl.contentHorizontalAlignment = .right
		pageControl.setImage(#imageLiteral(resourceName: "page"), for: .normal)
		pageControl.setImage(#imageLiteral(resourceName: "selecedPage"), for: .selected)
		pageControl.itemSpacing = itemSpacing
		pageControl.interitemSpacing = interitemSpacing
	}
	
	// MARK: - Actions
	
	@IBAction func next(_ sender: UIButton) {
		dismiss(animated: true, completion: nil)
	}
}

extension OnboardingViewController: FSPagerViewDataSource {
	
	func numberOfItems(in pagerView: FSPagerView) -> Int {
		return numberOfItems
	}
	
	public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
		
		let cell = pagerView.dequeueReusableCell(withReuseIdentifier: pagerReuseIdentifier, at: index)
		cell.imageView?.image = #imageLiteral(resourceName: "photo").withRenderingMode(.alwaysTemplate)
		cell.imageView?.tintColor = .lightRed
		cell.imageView?.contentMode = .center
		cell.imageView?.backgroundColor = AppAppearance.UI.Image.color
		cell.imageView?.layer.cornerRadius = AppAppearance.UI.Image.radius
		cell.imageView?.layer.masksToBounds = true
		cell.contentView.layer.shadowColor = UIColor.clear.cgColor
		return cell
	}
}

extension OnboardingViewController: FSPagerViewDelegate {
	
	func pagerViewDidScroll(_ pagerView: FSPagerView) {
		
		guard self.pageControl.currentPage != pagerView.currentIndex else {
			return
		}
		self.pageControl.currentPage = pagerView.currentIndex
		
		UIView.animate(withDuration: 0.15,
					   delay: 0,
					   options: .curveEaseInOut,
					   animations: {
						self.bottomConstraint.constant = pagerView.currentIndex == (self.numberOfItems - 1) ? 60 : -60
			self.view.layoutIfNeeded()
		}, completion: nil)
	}
}
