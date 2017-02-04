//
//  SecondaryViewController.swift
//  StoryboardPresentable Sample
//
//  Created by Victor Hudson on 2/1/17.
//  Copyright © 2017 Victor Hudson. All rights reserved.
//

import UIKit

class SecondaryViewController: UIViewController {
	
	@IBAction func dismissVC(_ sender: UIButton) {
		dismiss(animated: true, completion: nil)
	}
	
}

// MARK: -
extension SecondaryViewController: StoryboardPresentable {
	// MARK: - Create instances from the storyboard with StoryboardPresentable
	static var storyboard: AppStoryboard { return .Secondary }
}

