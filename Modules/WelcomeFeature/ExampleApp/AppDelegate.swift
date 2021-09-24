import UIKit
import WelcomeFeature

@UIApplicationMain
final class AppDelegate: NSObject, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let vc = UIViewController()
        vc.view.backgroundColor = .black        
        window?.rootViewController = vc
        
        WelcomeFeature.start(root: vc)
        
        return true
    }
}
