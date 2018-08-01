//
//  TermsViewCoordinatorOutput.swift
//  Flow
//
//  Created by workmachine on 01.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol TermsViewCoordinatorOutput: Presentable {
	
	var onAccept: (() -> Void)? { get set }
}
