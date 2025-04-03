import Testing
@testable import MyLibrary

import Foundation

func date(offset: Int) -> Date {
    let timeZone = TimeZone(secondsFromGMT: offset)!
    
    var calendar = Calendar(identifier: .gregorian)
    calendar.timeZone = timeZone
    
    return DateComponents(calendar: calendar, timeZone: timeZone, year: 2023, month: 11, day: 14, hour: 22, minute: 13, second: 20).date!
}

@Test func example() async throws {
    let results = [
        date(offset: 0).timeIntervalSince1970,
        date(offset: 1).timeIntervalSince1970,
        date(offset: 60).timeIntervalSince1970,
    ]
    
    #expect(results == [])
}
