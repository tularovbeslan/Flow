//
//  Coordinator.swift
//  Flow
//
//  Created by workmachine on 26.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol Coordinator: class {
	func start()
	func start(with option: DeepLinkOption?)
}
