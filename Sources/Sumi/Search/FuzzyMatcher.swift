import Foundation

/// Fuzzy matching: query characters must appear in order; matches at word starts
/// (after / _ - . or a camelCase hump), consecutive runs and prefixes score higher.
enum FuzzyMatcher {
    struct Match {
        var score: Int
        var positions: [Int]
    }

    @inline(__always) static func fold(_ c: UInt16) -> UInt16 {
        (c >= 65 && c <= 90) ? c + 32 : c
    }

    static func match(_ query: [UInt16], _ target: [UInt16]) -> Match? {
        guard !query.isEmpty, query.count <= target.count else { return nil }
        var qi = 0
        for c in target where qi < query.count && fold(c) == query[qi] { qi += 1 }
        guard qi == query.count else { return nil }
        return greedy(query, target, preferBoundary: true) ?? greedy(query, target, preferBoundary: false)
    }

    private static func greedy(_ q: [UInt16], _ t: [UInt16], preferBoundary: Bool) -> Match? {
        var positions: [Int] = []
        positions.reserveCapacity(q.count)
        var start = 0
        for qc in q {
            var chosen = -1
            if preferBoundary, let last = positions.last, last + 1 < t.count, fold(t[last + 1]) == qc {
                chosen = last + 1
            } else {
                var j = start
                while j < t.count {
                    if fold(t[j]) == qc {
                        if chosen < 0 {
                            chosen = j
                            if !preferBoundary { break }
                        }
                        if isBoundary(t, j) {
                            chosen = j
                            break
                        }
                    }
                    j += 1
                }
            }
            guard chosen >= 0 else { return nil }
            positions.append(chosen)
            start = chosen + 1
        }
        return Match(score: score(positions, t, q.count), positions: positions)
    }

    private static func isBoundary(_ t: [UInt16], _ i: Int) -> Bool {
        if i == 0 { return true }
        let p = t[i - 1]
        let c = t[i]
        if p == 0x2F || p == 0x5F || p == 0x2D || p == 0x2E || p == 0x20 { return true }
        return c >= 65 && c <= 90 && !(p >= 65 && p <= 90)
    }

    private static func score(_ p: [Int], _ t: [UInt16], _ queryLength: Int) -> Int {
        var s = 0
        for (k, pos) in p.enumerated() {
            s += 10
            if isBoundary(t, pos) { s += pos == 0 ? 25 : 15 }
            if k > 0 {
                let gap = pos - p[k - 1] - 1
                s += gap == 0 ? 12 : -min(gap, 8)
            } else {
                s -= min(pos, 10)
            }
        }
        if queryLength == t.count {
            s += 100
        } else if p.last == queryLength - 1 {
            s += 30
        }
        return s - t.count / 4
    }
}
