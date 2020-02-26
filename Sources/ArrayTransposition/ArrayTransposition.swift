import Foundation

extension Array {

    public static func transpose(_ a: [[Element]]) -> [[Element]]? {
        guard a.count > 0 else { return [] }
        let counts = a.map { $0.count }
        let resLength = counts[0]
        let sameCounts = counts
            .map { $0 == resLength }
            .reduce(true) { $0 && $1 }
        guard sameCounts else { return nil }
        var res: [[Element]] = []
        for k in (0 ..< resLength) {
            res += [a.map { $0[k] }]
        }
        return res
    }

}
