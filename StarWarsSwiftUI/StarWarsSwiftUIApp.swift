import SwiftUI
import Resolver

class AppDelegate: NSObject, UIApplicationDelegate {
	func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
		setupResolverRegistrations()
		return true
	}
	
	func setupResolverRegistrations() {
		Resolver.register { StarWarsService() as StarWarsServiceType }
	}
}

@main
struct StarWarsSwiftUIApp: App {
	@UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
	
	var body: some Scene {
		WindowGroup {
			RootView()
		}
	}
}
