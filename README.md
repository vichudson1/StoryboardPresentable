# StoryboardPresentable
A protocol based solution for creating instances of view controllers defined in UIStoryboard files.

This was originally inspired by [Clean Code for Multiple Storyboards](https://medium.com/@gurdeep060289/clean-code-for-multiple-storyboards-c64eb679dbf6#.t83ahlu9h) by [Gurdeep Singh](https://twitter.com/Gurdeep060289). I really liked the ideas he presented for generating properly typed view controllers, in code, from UIStoryboards. I felt it was better suited to a Protocol than generic UIViewController extension though so I made this.

## Usage

Clone or download a .zip of this repository. Add the `StoryboardPresentable` folder to your project. Now your project just needs an `AppStoryboard` enum defined which is `RawRepresentable` as a `String`. Add the cases for the Storyboard names used in your app.
 
``` swift
enum AppStoryboard: String {
	case Main
	case Secondary
}
```

An extension for `AppStoryboard` resides in the `StoryboardPresentable` directory to allows the enum to generate UIStoryboard instances of your storyboards. `StoryboardPresentable` then uses those UIStoryboard instances to instantiate your conforming view controllers.

Any view controller you wish to present from code simply needs to conform to `StoryboardPresentable` and be given a variable to tell the protocol which storyboard the view controller resides in.

``` swift
extension SecondaryViewController: StoryboardPresentable {
	// MARK: - Create instances from the storyboard with StoryboardPresentable
	static var storyboard: AppStoryboard { return .Secondary }
}
```

Presenting these view controllers from code is now just a static method call on the view controller’s class.
``` swift
	let vc = SecondaryViewController.storyboardInstance()
```

View the enclosed sample project to see an example of this in action. 

## License:
`StoryboardPresentable` is free to use under the MIT License.

