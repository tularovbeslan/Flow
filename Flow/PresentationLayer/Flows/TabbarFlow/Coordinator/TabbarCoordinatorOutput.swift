//
//  TabbarCoordinatorOutput.swift
//  Flow
//
//  Created by workmachine on 10.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol TabbarCoordinatorOutput: class {
	
	var finishFlow: (() -> Void)? { get set }
}
