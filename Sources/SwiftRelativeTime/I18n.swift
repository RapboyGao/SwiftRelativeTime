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

    public static func languageBundle(language: String? = nil) -> Bundle {
        guard let language = language else {
            return .module
        }
        let bundlePath = Bundle.module.resourcePath!
        let languageBundlePath = "\(bundlePath)/\(language)"
        return Bundle(path: languageBundlePath) ?? .module
    }

    public static func localizedJustNow(in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        return NSLocalizedString(
            keyForJustNow, tableName: nil, bundle: bundle, value: "", comment: ""
        )
    }

    public static func localizedSecondsAgo(in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        return NSLocalizedString(
            keyForAFewSecondsAgo, tableName: nil, bundle: bundle, value: "", comment: ""
        )
    }

    public static func localizedInAFewSeconds(in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        return NSLocalizedString(
            keyForInAFewSeconds, tableName: nil, bundle: bundle, value: "", comment: ""
        )
    }

    public static func localizedString(minutes: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if minutes == 1 {
            return NSLocalizedString(
                keyForInAMinute, tableName: nil, bundle: bundle, value: "", comment: ""
            )
        } else {
            return NSLocalizedString(
                keyForMinutesAgo, tableName: nil, bundle: bundle, value: "", comment: ""
            )
            .replacingOccurrences(of: "{{minutes}}", with: "\(minutes)")
        }
    }

    public static func localizedString(hours: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if hours == 1 {
            return NSLocalizedString(
                keyForInAnHour, tableName: nil, bundle: bundle, value: "", comment: ""
            )
        } else {
            return NSLocalizedString(
                keyForHoursAgo, tableName: nil, bundle: bundle, value: "", comment: ""
            )
            .replacingOccurrences(of: "{{hours}}", with: "\(hours)")
        }
    }

    public static func localizedString(days: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if days == 1 {
            return NSLocalizedString(
                keyForInADay, tableName: nil, bundle: bundle, value: "", comment: ""
            )
        } else {
            return NSLocalizedString(
                keyForDaysAgo, tableName: nil, bundle: bundle, value: "", comment: ""
            )
            .replacingOccurrences(of: "{{days}}", with: "\(days)")
        }
    }

    public static func localizedString(months: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if months == 1 {
            return NSLocalizedString(
                keyForInAMonth, tableName: nil, bundle: bundle, value: "", comment: ""
            )
        } else {
            return NSLocalizedString(
                keyForMonthsAgo, tableName: nil, bundle: bundle, value: "", comment: ""
            )
            .replacingOccurrences(of: "{{months}}", with: "\(months)")
        }
    }

    public static func localizedString(years: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if years == 1 {
            return NSLocalizedString(
                keyForInAYear, tableName: nil, bundle: bundle, value: "", comment: ""
            )
        } else {
            return NSLocalizedString(
                keyForYearsAgo, tableName: nil, bundle: bundle, value: "", comment: ""
            )
            .replacingOccurrences(of: "{{years}}", with: "\(years)")
        }
    }

    // 未来时间的本地化方法
    public static func localizedString(inMinutes: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if inMinutes == 1 {
            return NSLocalizedString(
                keyForInAMinute, tableName: nil, bundle: bundle, value: "", comment: ""
            )
        } else {
            return NSLocalizedString(
                keyForInMinutes, tableName: nil, bundle: bundle, value: "", comment: ""
            )
            .replacingOccurrences(of: "{{minutes}}", with: "\(inMinutes)")
        }
    }

    public static func localizedString(inHours: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if inHours == 1 {
            return NSLocalizedString(
                keyForInAnHour, tableName: nil, bundle: bundle, value: "", comment: ""
            )
        } else {
            return NSLocalizedString(
                keyForInHours, tableName: nil, bundle: bundle, value: "", comment: ""
            )
            .replacingOccurrences(of: "{{hours}}", with: "\(inHours)")
        }
    }

    public static func localizedString(inDays: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if inDays == 1 {
            return NSLocalizedString(
                keyForInADay, tableName: nil, bundle: bundle, value: "", comment: ""
            )
        } else {
            return NSLocalizedString(
                keyForInDays, tableName: nil, bundle: bundle, value: "", comment: ""
            )
            .replacingOccurrences(of: "{{days}}", with: "\(inDays)")
        }
    }

    public static func localizedString(inMonths: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if inMonths == 1 {
            return NSLocalizedString(
                keyForInAMonth, tableName: nil, bundle: bundle, value: "", comment: ""
            )
        } else {
            return NSLocalizedString(
                keyForInMonths, tableName: nil, bundle: bundle, value: "", comment: ""
            )
            .replacingOccurrences(of: "{{months}}", with: "\(inMonths)")
        }
    }

    public static func localizedString(inYears: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if inYears == 1 {
            return NSLocalizedString(
                keyForInAYear, tableName: nil, bundle: bundle, value: "", comment: ""
            )
        } else {
            return NSLocalizedString(
                keyForInYears, tableName: nil, bundle: bundle, value: "", comment: ""
            )
            .replacingOccurrences(of: "{{years}}", with: "\(inYears)")
        }
    }
}
