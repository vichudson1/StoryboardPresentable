//  AppStoryboard+Properties.swift
//  Created by Victor Hudson on 2/1/17.
//  Copyright © 2017 Victor Hudson. All rights reserved.

import UIKit

// MARK: -
extension AppStoryboard {
	// MARK: - Instance Properties
	
	
	/// A UIStoryboard instance from the instances of the AppStoryboard enum.
	var instance: UIStoryboard { return UIStoryboard(name: self.rawValue, bundle: Bundle.main) }
}



