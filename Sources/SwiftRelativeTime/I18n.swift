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

    public static let commentForJustNow: String = "Just now"
    public static let commentForAFewSecondsAgo: String = "A few seconds ago"
    public static let commentForAMinuteAgo: String = "A minute ago"
    public static let commentForMinutesAgo: String = "{{minutes}} minutes ago"
    public static let commentForAnHourAgo: String = "An hour ago"
    public static let commentForHoursAgo: String = "{{hours}} hours ago"
    public static let commentForADayAgo: String = "A day ago"
    public static let commentForDaysAgo: String = "{{days}} days ago"
    public static let commentForAMonthAgo: String = "A month ago"
    public static let commentForMonthsAgo: String = "{{months}} months ago"
    public static let commentForAYearAgo: String = "A year ago"
    public static let commentForYearsAgo: String = "{{years}} years ago"
    public static let commentForInAFewSeconds: String = "In a few seconds"
    public static let commentForInAMinute: String = "In a minute"
    public static let commentForInMinutes: String = "In {{minutes}} minutes"
    public static let commentForInAnHour: String = "In an hour"
    public static let commentForInHours: String = "In {{hours}} hours"
    public static let commentForInADay: String = "In a day"
    public static let commentForInDays: String = "In {{days}} days"
    public static let commentForInAMonth: String = "In a month"
    public static let commentForInMonths: String = "In {{months}} months"
    public static let commentForInAYear: String = "In a year"
    public static let commentForInYears: String = "In {{years}} years"

    public static let justNow: String = NSLocalizedString(
        keyForJustNow, bundle: .module, comment: commentForJustNow)
    // 过去时间
    public static let aFewSecondsAgo: String = NSLocalizedString(
        keyForAFewSecondsAgo, bundle: .module, comment: commentForAFewSecondsAgo)
    public static let aMinuteAgo: String = NSLocalizedString(
        keyForAMinuteAgo, bundle: .module, comment: commentForAMinuteAgo)
    public static let minutesAgo: String = NSLocalizedString(
        keyForMinutesAgo, bundle: .module, comment: commentForMinutesAgo)
    public static let anHourAgo: String = NSLocalizedString(
        keyForAnHourAgo, bundle: .module, comment: commentForAnHourAgo)
    public static let hoursAgo: String = NSLocalizedString(
        keyForHoursAgo, bundle: .module, comment: commentForHoursAgo)
    public static let aDayAgo: String = NSLocalizedString(
        keyForADayAgo, bundle: .module, comment: commentForADayAgo)
    public static let daysAgo: String = NSLocalizedString(
        keyForDaysAgo, bundle: .module, comment: commentForDaysAgo)
    public static let aMonthAgo: String = NSLocalizedString(
        keyForAMonthAgo, bundle: .module, comment: commentForAMonthAgo)
    public static let monthsAgo: String = NSLocalizedString(
        keyForMonthsAgo, bundle: .module, comment: commentForMonthsAgo)
    public static let aYearAgo: String = NSLocalizedString(
        keyForAYearAgo, bundle: .module, comment: commentForAYearAgo)
    public static let yearsAgo: String = NSLocalizedString(
        keyForYearsAgo, bundle: .module, comment: commentForYearsAgo)

    // 未来时间
    public static let inAFewSeconds: String = NSLocalizedString(
        keyForInAFewSeconds, bundle: .module, comment: commentForInAFewSeconds)
    public static let inAMinute: String = NSLocalizedString(
        keyForInAMinute, bundle: .module, comment: commentForInAMinute)
    public static let inMinutes: String = NSLocalizedString(
        keyForInMinutes, bundle: .module, comment: commentForInMinutes)
    public static let inAnHour: String = NSLocalizedString(
        keyForInAnHour, bundle: .module, comment: commentForInAnHour)
    public static let inHours: String = NSLocalizedString(
        keyForInHours, bundle: .module, comment: commentForInHours)
    public static let inADay: String = NSLocalizedString(
        keyForInADay, bundle: .module, comment: commentForInADay)
    public static let inDays: String = NSLocalizedString(
        keyForInDays, bundle: .module, comment: commentForInDays)
    public static let inAMonth: String = NSLocalizedString(
        keyForInAMonth, bundle: .module, comment: commentForInAMonth)
    public static let inMonths: String = NSLocalizedString(
        keyForInMonths, bundle: .module, comment: commentForInMonths)
    public static let inAYear: String = NSLocalizedString(
        keyForInAYear, bundle: .module, comment: commentForInAYear)
    public static let inYears: String = NSLocalizedString(
        keyForInYears, bundle: .module, comment: commentForInYears)

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
        guard let language = language,
            let bundlePath = Bundle.module.resourcePath
        else {
            return .module
        }
        let languageBundlePath = "\(bundlePath)/\(language).lproj"
        let thisBundle = Bundle(path: languageBundlePath)
        return thisBundle ?? .module
    }

    public static func localizedJustNow(in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        return NSLocalizedString(
            keyForJustNow, tableName: nil, bundle: bundle, comment: commentForJustNow
        )
    }

    public static func localizedSecondsAgo(in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        return NSLocalizedString(
            keyForAFewSecondsAgo, tableName: nil, bundle: bundle, comment: commentForAFewSecondsAgo
        )
    }

    public static func localizedString(minutes: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if minutes == 1 {
            return NSLocalizedString(
                keyForAMinuteAgo, tableName: nil, bundle: bundle, comment: commentForAMinuteAgo
            )
        } else {
            return NSLocalizedString(
                keyForMinutesAgo, tableName: nil, bundle: bundle, comment: commentForMinutesAgo
            )
            .replacingOccurrences(of: "{{minutes}}", with: "\(minutes)")
        }
    }

    public static func localizedString(hours: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if hours == 1 {
            return NSLocalizedString(
                keyForAnHourAgo, tableName: nil, bundle: bundle, comment: commentForAnHourAgo
            )
        } else {
            return NSLocalizedString(
                keyForHoursAgo, tableName: nil, bundle: bundle, comment: commentForHoursAgo
            )
            .replacingOccurrences(of: "{{hours}}", with: "\(hours)")
        }
    }

    public static func localizedString(days: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if days == 1 {
            return NSLocalizedString(
                keyForADayAgo, tableName: nil, bundle: bundle, comment: commentForADayAgo
            )
        } else {
            return NSLocalizedString(
                keyForDaysAgo, tableName: nil, bundle: bundle, comment: commentForDaysAgo
            )
            .replacingOccurrences(of: "{{days}}", with: "\(days)")
        }
    }

    public static func localizedString(months: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if months == 1 {
            return NSLocalizedString(
                keyForAMonthAgo, tableName: nil, bundle: bundle, comment: commentForAMonthAgo
            )
        } else {
            return NSLocalizedString(
                keyForMonthsAgo, tableName: nil, bundle: bundle, comment: commentForMonthsAgo
            )
            .replacingOccurrences(of: "{{months}}", with: "\(months)")
        }
    }

    public static func localizedString(years: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if years == 1 {
            return NSLocalizedString(
                keyForAYearAgo, tableName: nil, bundle: bundle, comment: commentForAYearAgo
            )
        } else {
            return NSLocalizedString(
                keyForYearsAgo, tableName: nil, bundle: bundle, comment: commentForYearsAgo
            )
            .replacingOccurrences(of: "{{years}}", with: "\(years)")
        }
    }

    public static func localizedInAFewSeconds(in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        return NSLocalizedString(
            keyForInAFewSeconds, tableName: nil, bundle: bundle, comment: commentForInAFewSeconds
        )
    }

    // 未来时间的本地化方法
    public static func localizedString(inMinutes: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if inMinutes == 1 {
            return NSLocalizedString(
                keyForInAMinute, tableName: nil, bundle: bundle, comment: commentForInAMinute
            )
        } else {
            return NSLocalizedString(
                keyForInMinutes, tableName: nil, bundle: bundle, comment: commentForInMinutes
            )
            .replacingOccurrences(of: "{{minutes}}", with: "\(inMinutes)")
        }
    }

    public static func localizedString(inHours: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if inHours == 1 {
            return NSLocalizedString(
                keyForInAnHour, tableName: nil, bundle: bundle, comment: commentForInAnHour
            )
        } else {
            return NSLocalizedString(
                keyForInHours, tableName: nil, bundle: bundle, comment: commentForInHours
            )
            .replacingOccurrences(of: "{{hours}}", with: "\(inHours)")
        }
    }

    public static func localizedString(inDays: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if inDays == 1 {
            return NSLocalizedString(
                keyForInADay, tableName: nil, bundle: bundle, comment: commentForInADay
            )
        } else {
            return NSLocalizedString(
                keyForInDays, tableName: nil, bundle: bundle, comment: commentForInDays
            )
            .replacingOccurrences(of: "{{days}}", with: "\(inDays)")
        }
    }

    public static func localizedString(inMonths: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if inMonths == 1 {
            return NSLocalizedString(
                keyForInAMonth, tableName: nil, bundle: bundle, comment: commentForInAMonth
            )
        } else {
            return NSLocalizedString(
                keyForInMonths, tableName: nil, bundle: bundle, comment: commentForInMonths
            )
            .replacingOccurrences(of: "{{months}}", with: "\(inMonths)")
        }
    }

    public static func localizedString(inYears: Int, in language: String? = nil) -> String {
        let bundle = languageBundle(language: language)
        if inYears == 1 {
            return NSLocalizedString(
                keyForInAYear, tableName: nil, bundle: bundle, comment: commentForInAYear
            )
        } else {
            return NSLocalizedString(
                keyForInYears, tableName: nil, bundle: bundle, comment: commentForInYears
            )
            .replacingOccurrences(of: "{{years}}", with: "\(inYears)")
        }
    }
}
