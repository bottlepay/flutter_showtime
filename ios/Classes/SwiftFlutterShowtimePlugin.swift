import Flutter
import UIKit
import ShowTime

public class SwiftFlutterShowtimePlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "flutter_showtime", binaryMessenger: registrar.messenger())
        let instance = SwiftFlutterShowtimePlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        ShowTime.enabled = .never
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch(call.method) {
        case "enable": enable(result: result)
        case "disable": disable(result: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    private func enable(result: FlutterResult) {
        ShowTime.enabled = .always
        result(nil)
    }
    
    private func disable(result: FlutterResult ) {
        ShowTime.enabled = .never
        result(nil)
    }
}
