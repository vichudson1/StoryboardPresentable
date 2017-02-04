//  StoryboardPresentable.swift
//  Created by Victor Hudson on 2/1/17.
//  Copyright © 2017 Victor Hudson. All rights reserved.

import Foundation

protocol StoryboardPresentable {
	
	/// The Conforming View Controller's Storyboard Identifier. 
	/// Override this only if your identifier is not a match for VC Class Name, otherwise a default implementation is provided.
	static var storyboardID: String { get }
	
	
	/// An instance of the AppStoryboard enum indicating which storyboard the VC is located in.
	static var storyboard: AppStoryboard { get }
}

extension StoryboardPresentable {
	
	/// Get an instance of the View Controller from its storyboard.
	///
	/// - Returns: A properly typed instance of the View Controller of a conforming class.
	static func storyboardInstance() -> Self {
		return storyboard.instance.instantiateViewController(withIdentifier: storyboardID) as! Self
	}
	
	
	/// This Default Implementation assuming the VC Class name and storyboard identifier are an exact match.
	static var storyboardID: String { return String(describing: self) }
}
