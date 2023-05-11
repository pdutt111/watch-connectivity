import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(IonicWatchConnectivityPlugin)
public class IonicWatchConnectivityPlugin: CAPPlugin {
    private let implementation = IonicWatchConnectivity()
     public func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {

        }

        public func sessionDidBecomeInactive(_ session: WCSession) {
            print("session inactive")
        }

        public func sessionDidDeactivate(_ session: WCSession) {
            print("session deactivated")
        }


        @objc func echo(_ call: CAPPluginCall) {
            let value = call.getString("value") ?? ""
            sendMessageToWatch(msg: value)
            call.resolve([
                "value": "test"
            ])
        }
        func sendMessageToWatch(msg:String){
            if (WCSession.isSupported()) {
                let session = WCSession.default
                session.delegate = self
                session.activate()
            }
            if (WCSession.default.isReachable) {
                let message = ["Message": msg]
                WCSession.default.sendMessage(message, replyHandler: nil)
            }
        }
}
