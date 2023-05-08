import Foundation

@objc public class WatchConnectivity: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
