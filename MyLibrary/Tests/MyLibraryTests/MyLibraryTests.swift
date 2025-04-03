import Testing
@testable import MyLibrary

import Foundation

@Test func example() async throws {
    let dates = [
        date(offset: 0),
        date(offset: 59),
        date(offset: 60),
        date(offset: 61),
        date(offset: -59),
        date(offset: -60),
        date(offset: -61),
    ].map { $0.timeIntervalSince1970 }

    #expect(dates == [
        1700000000,
        1699999940,
        1699999940,
        1699999940,
        1700000060,
        1700000060,
        1700000060,
    ])
}
