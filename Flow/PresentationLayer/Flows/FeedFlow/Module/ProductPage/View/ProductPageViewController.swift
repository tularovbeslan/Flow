//
//  ProductPageViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class ProductPageViewController: UIViewController, ProductPageViewInput, ProductPageViewCoordinatorOutput {

	// MARK: - Properties
	
    var output: ProductPageViewOutput!
	
	// MARK: - IBOutlets
	
	@IBOutlet weak var tableView: UITableView!
	@IBOutlet var buttons: [UIButton]!

    // MARK: - Life cycle
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
        output.viewDidLoad()
    }


    // MARK: - ProductPageViewInput
	
    func setupInitialState() {
		setupTableView()
		buttonsAppearance()
    }
	
	// MARK: - ProductPageViewCoordinatorOutput
	
	var onCart: (() -> Void)?
	var onBack: (() -> Void)?
	
	// MARK: - Helpers
	
	private func setupTableView() {
		
		tableView.delegate = self
		tableView.dataSource = self
		tableView.tableFooterView = UIView(frame: .zero)
		tableView.separatorStyle = .none
		tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
	}
	
	// MARK: - Actions
	
	@IBAction func back(_ sender: UIButton) {
		output.back()
	}
	
	@IBAction func addToCart(_ sender: UIButton) {
		output.addToCart()
	}
	
	// MARK: - Appearance
	
	private func buttonsAppearance() {
		
		buttons.forEach { (button) in
			
			button.layer.cornerRadius = AppAppearance.UI.Button(tag: button.tag).radius
			button.layer.masksToBounds = true
			button.setTitleColor(.white, for: .normal)
			button.backgroundColor = AppAppearance.UI.Button(tag: button.tag).color
			button.titleLabel?.font = UIFont.avertaCY(style: .semibold, size: 13)

			switch button.tag {
			case 0:
				button.setTitle("Back", for: .normal)
			case 2:
				button.setTitle("Add to Cart", for: .normal)
			default:
				break
			}
		}
	}
}

extension ProductPageViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return tableView.dequeueReusableCell(withIdentifier: String(describing: ProfileCell.self), for: indexPath)
	}
}

extension ProductPageViewController: UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return UITableViewAutomaticDimension
	}
}
