import Foundation

extension Array {

    public static func transpose(_ a: [[Element]]) -> [[Element]] {
        guard a.count > 0 else { return [] }
        let resLength = a.map { $0.count }.min() ?? 0
        var res: [[Element]] = []
        for k in (0 ..< resLength) {
            res += [a.map { $0[k] }]
        }
        return res
    }

}
