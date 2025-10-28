import Foundation

public enum SwiftRelativeTime: Codable, Sendable, Hashable, CustomStringConvertible {
    case justNow
    case aFewSecondsAgo
    case aMinuteAgo
    case minutesAgo(Int)
    case anHourAgo
    case hoursAgo(Int)
    case aDayAgo
    case daysAgo(Int)
    case aMonthAgo
    case monthsAgo(Int)
    case aYearAgo
    case yearsAgo(Int)
    // 未来时间 cases
    case inAFewSeconds
    case inAMinute
    case inMinutes(Int)
    case inAnHour
    case inHours(Int)
    case inADay
    case inDays(Int)
    case inAMonth
    case inMonths(Int)
    case inAYear
    case inYears(Int)

    public static let examples: [SwiftRelativeTime] = [
        .justNow,
        .aFewSecondsAgo,
        .aMinuteAgo,
        .minutesAgo(5),
        .anHourAgo,
        .hoursAgo(3),
        .aDayAgo,
        .daysAgo(2),
        .aMonthAgo,
        .monthsAgo(4),
        .aYearAgo,
        .yearsAgo(2),
        .inAFewSeconds,
        .inAMinute,
        .inMinutes(3),
        .inAnHour,
        .inHours(2),
        .inADay,
        .inDays(1),
        .inAMonth,
        .inMonths(6),
        .inAYear,
        .inYears(1),
    ]

    public init(_ date: Date, now: Date = Date()) {
        // 使用 Calendar 和 DateComponents 计算
        let calendar = Calendar.current

        // 判断是过去时间还是未来时间
        if now >= date {
            // 过去时间
            let components = calendar.dateComponents(
                [.year, .month, .day, .hour, .minute, .second], from: date, to: now)

            if let years = components.year, years > 1 {
                self = .yearsAgo(years)
            } else if let years = components.year, years == 1 {
                self = .aYearAgo
            } else if let months = components.month, months > 1 {
                self = .monthsAgo(months)
            } else if let months = components.month, months == 1 {
                self = .aMonthAgo
            } else if let days = components.day, days > 1 {
                self = .daysAgo(days)
            } else if let days = components.day, days == 1 {
                self = .aDayAgo
            } else if let hours = components.hour, hours > 1 {
                self = .hoursAgo(hours)
            } else if let hours = components.hour, hours == 1 {
                self = .anHourAgo
            } else if let minutes = components.minute, minutes > 1 {
                self = .minutesAgo(minutes)
            } else if let minutes = components.minute, minutes == 1 {
                self = .aMinuteAgo
            } else if let seconds = components.second, seconds > 5 {
                self = .aFewSecondsAgo
            } else {
                self = .justNow
            }
        } else {
            // 未来时间
            let components = calendar.dateComponents(
                [.year, .month, .day, .hour, .minute, .second], from: now, to: date)

            if let years = components.year, years > 1 {
                self = .inYears(years)
            } else if let years = components.year, years == 1 {
                self = .inAYear
            } else if let months = components.month, months > 1 {
                self = .inMonths(months)
            } else if let months = components.month, months == 1 {
                self = .inAMonth
            } else if let days = components.day, days > 1 {
                self = .inDays(days)
            } else if let days = components.day, days == 1 {
                self = .inADay
            } else if let hours = components.hour, hours > 1 {
                self = .inHours(hours)
            } else if let hours = components.hour, hours == 1 {
                self = .inAnHour
            } else if let minutes = components.minute, minutes > 1 {
                self = .inMinutes(minutes)
            } else if let minutes = components.minute, minutes == 1 {
                self = .inAMinute
            } else {
                self = .inAFewSeconds
            }
        }
    }

    public var description: String {
        switch self {
        case .justNow:
            return I18n.justNow
        case .aFewSecondsAgo:
            return I18n.aFewSecondsAgo
        case .aMinuteAgo:
            return I18n.aMinuteAgo
        case .minutesAgo(let minutes):
            return I18n.localizedString(minutes: minutes)
        case .anHourAgo:
            return I18n.anHourAgo
        case .hoursAgo(let hours):
            return I18n.localizedString(hours: hours)
        case .aDayAgo:
            return I18n.aDayAgo
        case .daysAgo(let days):
            return I18n.localizedString(days: days)
        case .aMonthAgo:
            return I18n.aMonthAgo
        case .monthsAgo(let months):
            return I18n.localizedString(months: months)
        case .aYearAgo:
            return I18n.aYearAgo
        case .yearsAgo(let years):
            return I18n.localizedString(years: years)
        case .inAFewSeconds:
            return I18n.inAFewSeconds
        case .inAMinute:
            return I18n.inAMinute
        case .inMinutes(let minutes):
            return I18n.localizedString(inMinutes: minutes)
        case .inAnHour:
            return I18n.inAnHour
        case .inHours(let hours):
            return I18n.localizedString(inHours: hours)
        case .inADay:
            return I18n.inADay
        case .inDays(let days):
            return I18n.localizedString(inDays: days)
        case .inAMonth:
            return I18n.inAMonth
        case .inMonths(let months):
            return I18n.localizedString(inMonths: months)
        case .inAYear:
            return I18n.inAYear
        case .inYears(let years):
            return I18n.localizedString(inYears: years)
        }
    }
}
