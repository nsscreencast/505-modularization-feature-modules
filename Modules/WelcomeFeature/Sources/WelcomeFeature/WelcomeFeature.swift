import UIKit

public enum WelcomeFeature {
    public static func start(root: UIViewController) {
        let storyboard = UIStoryboard(name: "Walkthrough", bundle: .module)
        let nav = storyboard.instantiateInitialViewController()!
        root.present(nav, animated: true, completion: nil)
    }
}
