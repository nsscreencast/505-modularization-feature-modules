import UIKit
import Core
import Store

@UIApplicationMain
final class AppDelegate: NSObject, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        
        let mealStore = MealStore(storage: .inMemory, calendar: .autoupdatingCurrent, sendNotification: { _, _ in })
        
        mealStore.add(Meal(name: "Pizza", date: Date(), type: .dinner))
        
        window?.rootViewController = vc
        
        return true
    }
}
