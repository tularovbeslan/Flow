//
//  CartViewCoordinatorOutput.swift
//  Flow
//
//  Created by workmachine on 09.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol CartViewCoordinatorOutput: Presentable {
	
	var onBay: (() -> Void)? { get set }
}
