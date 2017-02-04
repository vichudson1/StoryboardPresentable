//
//  ViewController.swift
//  StoryboardPresentable Sample
//
//  Created by Victor Hudson on 2/1/17.
//  Copyright © 2017 Victor Hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBAction func showVC(_ sender: UIButton) {
		let vc = SecondaryViewController.storyboardInstance()
		present(vc, animated: true, completion: nil)
	}

}

