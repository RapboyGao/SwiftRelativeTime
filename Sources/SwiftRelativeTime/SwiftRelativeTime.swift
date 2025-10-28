import Foundation

/// An enum representing relative time expressions in a human-readable format.
/// 一个表示人类可读格式的相对时间表达式的枚举。
///
/// This enum provides a way to represent time differences between dates in a user-friendly manner,
/// supporting both past and future time references.
/// 这个枚举提供了一种以用户友好的方式表示日期之间时间差的方法，支持过去和未来时间引用。
public enum SwiftRelativeTime: Codable, Sendable, Hashable, CustomStringConvertible {
    /// Represents the current moment, typically within the last few seconds.
    /// 表示当前时刻，通常在过去的几秒钟内。
    case justNow

    /// Represents a time that occurred a few seconds ago (typically 5-59 seconds).
    /// 表示几秒钟前发生的时间（通常5-59秒）。
    case aFewSecondsAgo

    /// Represents exactly one minute ago.
    /// 表示恰好一分钟前。
    case aMinuteAgo

    /// Represents multiple minutes ago.
    /// 表示几分钟前。
    /// - Parameter minutes: The number of minutes ago.
    /// - 参数 minutes: 多少分钟前。
    case minutesAgo(Int)

    /// Represents exactly one hour ago.
    /// 表示恰好一小时前。
    case anHourAgo

    /// Represents multiple hours ago.
    /// 表示几小时前。
    /// - Parameter hours: The number of hours ago.
    /// - 参数 hours: 多少小时前。
    case hoursAgo(Int)

    /// Represents exactly one day ago.
    /// 表示恰好一天前。
    case aDayAgo

    /// Represents multiple days ago.
    /// 表示几天前。
    /// - Parameter days: The number of days ago.
    /// - 参数 days: 多少天前。
    case daysAgo(Int)

    /// Represents exactly one month ago.
    /// 表示恰好一个月前。
    case aMonthAgo

    /// Represents multiple months ago.
    /// 表示几个月前。
    /// - Parameter months: The number of months ago.
    /// - 参数 months: 多少个月前。
    case monthsAgo(Int)

    /// Represents exactly one year ago.
    /// 表示恰好一年前。
    case aYearAgo

    /// Represents multiple years ago.
    /// 表示几年前。
    /// - Parameter years: The number of years ago.
    /// - 参数 years: 多少年前。
    case yearsAgo(Int)

    /// Represents a time that will occur in a few seconds.
    /// 表示几秒钟后将要发生的时间。
    case inAFewSeconds

    /// Represents exactly one minute from now.
    /// 表示恰好一分钟后。
    case inAMinute

    /// Represents multiple minutes from now.
    /// 表示几分钟后。
    /// - Parameter minutes: The number of minutes from now.
    /// - 参数 minutes: 多少分钟后。
    case inMinutes(Int)

    /// Represents exactly one hour from now.
    /// 表示恰好一小时后。
    case inAnHour

    /// Represents multiple hours from now.
    /// 表示几小时后。
    /// - Parameter hours: The number of hours from now.
    /// - 参数 hours: 多少小时后。
    case inHours(Int)

    /// Represents exactly one day from now.
    /// 表示恰好一天后。
    case inADay

    /// Represents multiple days from now.
    /// 表示几天后。
    /// - Parameter days: The number of days from now.
    /// - 参数 days: 多少天后。
    case inDays(Int)

    /// Represents exactly one month from now.
    /// 表示恰好一个月后。
    case inAMonth

    /// Represents multiple months from now.
    /// 表示几个月后。
    /// - Parameter months: The number of months from now.
    /// - 参数 months: 多少个月后。
    case inMonths(Int)

    /// Represents exactly one year from now.
    /// 表示恰好一年后。
    case inAYear

    /// Represents multiple years from now.
    /// 表示几年后。
    /// - Parameter years: The number of years from now.
    /// - 参数 years: 多少年后。
    case inYears(Int)

    /// A collection of example relative time values for demonstration and testing purposes.
    /// 用于演示和测试的示例相对时间值集合。
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

    /// Initializes a new relative time value based on the difference between two dates.
    /// 根据两个日期之间的差异初始化一个新的相对时间值。
    ///
    /// - Parameters:
    ///   - date: The date to compare against the reference date.
    ///   - now: The reference date to compare against (defaults to the current date).
    /// - 参数:
    ///   - date: 要与参考日期比较的日期。
    ///   - now: 要比较的参考日期（默认为当前日期）。
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

    /// The human-readable string representation of the relative time.
    /// 相对时间的人类可读字符串表示。
    ///
    /// This property returns a localized string based on the relative time case, using the I18n utility.
    /// 此属性根据相对时间的case返回本地化字符串，使用I18n工具。
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

    public func localized(in languageBundle: String) -> String {
        guard let moduleBundlePath = Bundle.module.resourcePath else {
            return description
        }
        let languageBundlePath = "\(moduleBundlePath)/\(languageBundle).lproj"
        guard let langBundle = Bundle(path: languageBundlePath) else {
            return description
        }
        langBundle.load()
        return NSLocalizedString(
            description, tableName: nil, bundle: langBundle, value: "", comment: "")
    }
}
