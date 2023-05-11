import Foundation
import Capacitor
import WatchConnectivity

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(WatchConnectivityPlugin)
public class WatchConnectivityPlugin: CAPPlugin {

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        sendMessageToWatch(msg: value)
        call.resolve([
            "value": "test"
        ])
    }
    func sendMessageToWatch(msg:String){
        if (WCSession.default.isReachable) {
            let message = ["Message": msg]
            WCSession.default.sendMessage(message, replyHandler: nil)
        }
    }
}
