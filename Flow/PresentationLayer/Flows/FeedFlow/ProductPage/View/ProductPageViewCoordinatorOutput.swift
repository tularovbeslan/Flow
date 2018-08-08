//
//  ProductPageViewCoordinatorOutput.swift
//  Flow
//
//  Created by workmachine on 07.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol ProductPageViewCoordinatorOutput: Presentable {
	
	var onCart: (() -> Void)? { get set }
	var onBack: (() -> Void)? { get set }
}
