import Flutter
import UIKit

///
import flutter_local_cotifications
@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    //
    FlutterLocalCotificationsPlugin.setPluginRefistrantCallback{(register) in 
    GeneratedPluginRegistrant.register(with: register)}

    GeneratedPluginRegistrant.register(with: self)

    //
    if #available(ios 10.0,*) {
      UNUserNotificationCenter.current().delegate=self as? UNUserNotificationCenterDelegate
    }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
