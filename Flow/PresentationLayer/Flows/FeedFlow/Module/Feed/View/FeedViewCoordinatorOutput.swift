//
//  FeedViewCoordinatorOutput.swift
//  Flow
//
//  Created by workmachine on 07.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol FeedViewCoordinatorOutput: Presentable {
	
	var onItemSelected: ( () -> Void )? { get set }
}
