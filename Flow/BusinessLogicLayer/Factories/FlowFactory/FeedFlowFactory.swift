//
//  FeedFlowFactory.swift
//  Flow
//
//  Created by workmachine on 07.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol FeedFlowFactory {
	
	func produceFeedOutput() -> FeedViewCoordinatorOutput
	func produceProductPageOutput() -> ProductPageViewCoordinatorOutput
	func produceCartOutput() -> CartViewCoordinatorOutput
}
