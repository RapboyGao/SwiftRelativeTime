import Foundation

enum I18n {

    public static let keyForJustNow: String = "@just.now"
    public static let keyForAFewSecondsAgo: String = "@a.few.seconds.ago"
    public static let keyForAMinuteAgo: String = "@a.minute.ago"
    public static let keyForMinutesAgo: String = "@{{minutes}}.minutes.ago"
    public static let keyForAnHourAgo: String = "@an.hour.ago"
    public static let keyForHoursAgo: String = "@{{hours}}.hours.ago"
    public static let keyForADayAgo: String = "@a.day.ago"
    public static let keyForDaysAgo: String = "@{{days}}.days.ago"
    public static let keyForAMonthAgo: String = "@a.month.ago"
    public static let keyForMonthsAgo: String = "@{{months}}.months.ago"
    public static let keyForAYearAgo: String = "@a.year.ago"
    public static let keyForYearsAgo: String = "@{{years}}.years.ago"
    public static let keyForInAFewSeconds: String = "@in.a.few.seconds"
    public static let keyForInAMinute: String = "@in.a.minute"
    public static let keyForInMinutes: String = "@in.{{minutes}}.minutes"
    public static let keyForInAnHour: String = "@in.an.hour"
    public static let keyForInHours: String = "@in.{{hours}}.hours"
    public static let keyForInADay: String = "@in.a.day"
    public static let keyForInDays: String = "@in.{{days}}.days"
    public static let keyForInAMonth: String = "@in.a.month"
    public static let keyForInMonths: String = "@in.{{months}}.months"
    public static let keyForInAYear: String = "@in.a.year"
    public static let keyForInYears: String = "@in.{{years}}.years"

    public static let justNow: String = NSLocalizedString(
        keyForJustNow, bundle: .module, comment: "Just now")
    // 过去时间
    public static let aFewSecondsAgo: String = NSLocalizedString(
        keyForAFewSecondsAgo, bundle: .module, comment: "A few seconds ago")
    public static let aMinuteAgo: String = NSLocalizedString(
        keyForAMinuteAgo, bundle: .module, comment: "A minute ago")
    public static let minutesAgo: String = NSLocalizedString(
        keyForMinutesAgo, bundle: .module, comment: "{{minutes}} minutes ago")
    public static let anHourAgo: String = NSLocalizedString(
        keyForAnHourAgo, bundle: .module, comment: "An hour ago")
    public static let hoursAgo: String = NSLocalizedString(
        keyForHoursAgo, bundle: .module, comment: "{{hours}} hours ago")
    public static let aDayAgo: String = NSLocalizedString(
        keyForADayAgo, bundle: .module, comment: "A day ago")
    public static let daysAgo: String = NSLocalizedString(
        keyForDaysAgo, bundle: .module, comment: "{{days}} days ago")
    public static let aMonthAgo: String = NSLocalizedString(
        keyForAMonthAgo, bundle: .module, comment: "A month ago")
    public static let monthsAgo: String = NSLocalizedString(
        keyForMonthsAgo, bundle: .module, comment: "{{months}} months ago")
    public static let aYearAgo: String = NSLocalizedString(
        keyForAYearAgo, bundle: .module, comment: "A year ago")
    public static let yearsAgo: String = NSLocalizedString(
        keyForYearsAgo, bundle: .module, comment: "{{years}} years ago")

    // 未来时间
    public static let inAFewSeconds: String = NSLocalizedString(
        keyForInAFewSeconds, bundle: .module, comment: "In a few seconds")
    public static let inAMinute: String = NSLocalizedString(
        keyForInAMinute, bundle: .module, comment: "In a minute")
    public static let inMinutes: String = NSLocalizedString(
        keyForInMinutes, bundle: .module, comment: "In {{minutes}} minutes")
    public static let inAnHour: String = NSLocalizedString(
        keyForInAnHour, bundle: .module, comment: "In an hour")
    public static let inHours: String = NSLocalizedString(
        keyForInHours, bundle: .module, comment: "In {{hours}} hours")
    public static let inADay: String = NSLocalizedString(
        keyForInADay, bundle: .module, comment: "In a day")
    public static let inDays: String = NSLocalizedString(
        keyForInDays, bundle: .module, comment: "In {{days}} days")
    public static let inAMonth: String = NSLocalizedString(
        keyForInAMonth, bundle: .module, comment: "In a month")
    public static let inMonths: String = NSLocalizedString(
        keyForInMonths, bundle: .module, comment: "In {{months}} months")
    public static let inAYear: String = NSLocalizedString(
        keyForInAYear, bundle: .module, comment: "In a year")
    public static let inYears: String = NSLocalizedString(
        keyForInYears, bundle: .module, comment: "In {{years}} years")

    public static let allStringKeys: [String] = [
        keyForJustNow,
        keyForAFewSecondsAgo,
        keyForAMinuteAgo,
        keyForMinutesAgo,
        keyForAnHourAgo,
        keyForHoursAgo,
        keyForADayAgo,
        keyForDaysAgo,
        keyForAMonthAgo,
        keyForMonthsAgo,
        keyForAYearAgo,
        keyForYearsAgo,
        keyForInAFewSeconds,
        keyForInAMinute,
        keyForInMinutes,
        keyForInAnHour,
        keyForInHours,
        keyForInADay,
        keyForInDays,
        keyForInAMonth,
        keyForInMonths,
        keyForInAYear,
        keyForInYears,
    ]

    public static func localizedString(minutes: Int) -> String {
        minutesAgo.replacingOccurrences(of: "{{minutes}}", with: "\(minutes)")
    }

    public static func localizedString(hours: Int) -> String {
        hoursAgo.replacingOccurrences(of: "{{hours}}", with: "\(hours)")
    }

    public static func localizedString(days: Int) -> String {
        daysAgo.replacingOccurrences(of: "{{days}}", with: "\(days)")
    }

    public static func localizedString(months: Int) -> String {
        monthsAgo.replacingOccurrences(of: "{{months}}", with: "\(months)")
    }

    public static func localizedString(years: Int) -> String {
        yearsAgo.replacingOccurrences(of: "{{years}}", with: "\(years)")
    }

    // 未来时间的本地化方法
    public static func localizedString(inMinutes: Int) -> String {
        I18n.inMinutes.replacingOccurrences(of: "{{minutes}}", with: "\(inMinutes)")
    }

    public static func localizedString(inHours: Int) -> String {
        I18n.inHours.replacingOccurrences(of: "{{hours}}", with: "\(inHours)")
    }

    public static func localizedString(inDays: Int) -> String {
        I18n.inDays.replacingOccurrences(of: "{{days}}", with: "\(inDays)")
    }

    public static func localizedString(inMonths: Int) -> String {
        I18n.inMonths.replacingOccurrences(of: "{{months}}", with: "\(inMonths)")
    }

    public static func localizedString(inYears: Int) -> String {
        I18n.inYears.replacingOccurrences(of: "{{years}}", with: "\(inYears)")
    }
}
