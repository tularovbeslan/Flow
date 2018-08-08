//
//  FlowFactoryImp.swift
//  Flow
//
//  Created by workmachine on 31.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit.UIViewController

class FlowFactoryImp: AuthorizationFlowFactory, OnboardingFlowFactory, FeedFlowFactory {
	
	func produceSingInOutput() -> SingInViewCoordinatorOutput {
		return SingInViewController.fromStoryboard(.AuthorizationFlow)
	}
	
	func produceSignUpOutput() -> SingUpViewCoordinatorOutput {
		return SingUpViewController.fromStoryboard(.AuthorizationFlow)
	}
	
	func producePasswordRecoveryOutput() -> PasswordRecoveryViewCoordinatorOutput {
		return PasswordRecoveryViewController.fromStoryboard(.AuthorizationFlow)
	}
	
	func produceTermsOutput() -> TermsViewCoordinatorOutput {
		return TermsViewController.fromStoryboard(.AuthorizationFlow)
	}
	
	func produceOnboardingOutput() -> OnboardingViewCoordinatorOutput {
		return OnboardingViewController.fromStoryboard(.OnboardingFlow)
	}
	
	func produceFeedOutput() -> FeedViewCoordinatorOutput {
		return FeedViewController.fromStoryboard(.FeedFlow)
	}
	
	func produceProductPageOutput() -> ProductPageViewCoordinatorOutput {
		return ProductPageViewController.fromStoryboard(.FeedFlow)
	}
}
