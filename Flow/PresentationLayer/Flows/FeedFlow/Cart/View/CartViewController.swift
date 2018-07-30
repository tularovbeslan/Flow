//
//  CartViewController.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class CartViewController: UIViewController, CartViewInput {

	// MARK: - Properties

    var output: CartViewOutput!
	
	// MARK: - IBOutlets

	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var button: UIButton!
	
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
		
        output.viewIsReady()
		labelsAppearance()
		buttonAppearance()
		setupTableView()
    }


    // MARK: - CartViewInput
	
    func setupInitialState() {
		
    }
	
	// MARK: - Helpers
	
	private func setupTableView() {
		
		tableView.delegate = self
		tableView.dataSource = self
		tableView.tableFooterView = UIView(frame: .zero)
		tableView.separatorStyle = .none
	}
	
	// MARK: - Actions
	
	@IBAction func bay(_ sender: UIButton) {
		
	}
	
	// MARK: - Appearance
	
	private func labelsAppearance() {
		
		label.backgroundColor = AppAppearance.UI.Label(tag: label.tag).color
		label.layer.cornerRadius = AppAppearance.UI.Label(tag: label.tag).radius
		label.layer.masksToBounds = true
		label.textAlignment = .left
	}
	
	private func buttonAppearance() {
		
		button.layer.cornerRadius = AppAppearance.UI.Button(tag: button.tag).radius
		button.layer.masksToBounds = true
		button.setTitleColor(.white, for: .normal)
		button.backgroundColor = AppAppearance.UI.Button(tag: button.tag).color
		button.setTitle("Bay", for: .normal)
	}
}

extension CartViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 3
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return tableView.dequeueReusableCell(withIdentifier: String(describing: CartCell.self), for: indexPath)
	}
}

extension CartViewController: UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return UITableViewAutomaticDimension
	}
}
