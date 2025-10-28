import Foundation
import Testing

@testable import SwiftRelativeTime

// 测试过去时间的运算正确性
@Test func testPastTimeCalculation() throws {
    // 使用固定的"现在"时间点，确保测试的确定性
    let now = Calendar.current.date(
        from: DateComponents(year: 2023, month: 1, day: 1, hour: 12, minute: 0, second: 0))!

    // 测试: 刚刚 (just now)
    let justNow = Calendar.current.date(byAdding: .second, value: -2, to: now)!
    let relativeTime1 = SwiftRelativeTime(justNow, now: now)
    #expect(relativeTime1 == .justNow)

    // 测试: 几秒前 (a few seconds ago)
    let aFewSecondsAgo = Calendar.current.date(byAdding: .second, value: -30, to: now)!
    let relativeTime2 = SwiftRelativeTime(aFewSecondsAgo, now: now)
    #expect(relativeTime2 == .aFewSecondsAgo)

    // 测试: 1分钟前 (a minute ago)
    let aMinuteAgo = Calendar.current.date(byAdding: .minute, value: -1, to: now)!
    let relativeTime3 = SwiftRelativeTime(aMinuteAgo, now: now)
    #expect(relativeTime3 == .aMinuteAgo)

    // 测试: 几分钟前 (minutes ago)
    let minutesAgo = Calendar.current.date(byAdding: .minute, value: -5, to: now)!
    let relativeTime4 = SwiftRelativeTime(minutesAgo, now: now)
    #expect(relativeTime4 == .minutesAgo(5))

    // 测试: 1小时前 (an hour ago)
    let anHourAgo = Calendar.current.date(byAdding: .hour, value: -1, to: now)!
    let relativeTime5 = SwiftRelativeTime(anHourAgo, now: now)
    #expect(relativeTime5 == .anHourAgo)

    // 测试: 几小时前 (hours ago)
    let hoursAgo = Calendar.current.date(byAdding: .hour, value: -3, to: now)!
    let relativeTime6 = SwiftRelativeTime(hoursAgo, now: now)
    #expect(relativeTime6 == .hoursAgo(3))

    // 测试: 1天前 (a day ago)
    let aDayAgo = Calendar.current.date(byAdding: .day, value: -1, to: now)!
    let relativeTime7 = SwiftRelativeTime(aDayAgo, now: now)
    #expect(relativeTime7 == .aDayAgo)

    // 测试: 几天前 (days ago)
    let daysAgo = Calendar.current.date(byAdding: .day, value: -5, to: now)!
    let relativeTime8 = SwiftRelativeTime(daysAgo, now: now)
    #expect(relativeTime8 == .daysAgo(5))

    // 测试: 1个月前 (a month ago)
    let aMonthAgo = Calendar.current.date(byAdding: .month, value: -1, to: now)!
    let relativeTime9 = SwiftRelativeTime(aMonthAgo, now: now)
    #expect(relativeTime9 == .aMonthAgo)

    // 测试: 几个月前 (months ago)
    let monthsAgo = Calendar.current.date(byAdding: .month, value: -3, to: now)!
    let relativeTime10 = SwiftRelativeTime(monthsAgo, now: now)
    #expect(relativeTime10 == .monthsAgo(3))

    // 测试: 1年前 (a year ago)
    let aYearAgo = Calendar.current.date(byAdding: .year, value: -1, to: now)!
    let relativeTime11 = SwiftRelativeTime(aYearAgo, now: now)
    #expect(relativeTime11 == .aYearAgo)

    // 测试: 几年前 (years ago)
    let yearsAgo = Calendar.current.date(byAdding: .year, value: -5, to: now)!
    let relativeTime12 = SwiftRelativeTime(yearsAgo, now: now)
    #expect(relativeTime12 == .yearsAgo(5))
}

// 测试未来时间的运算正确性
@Test func testFutureTimeCalculation() throws {
    // 使用固定的"现在"时间点，确保测试的确定性
    let now = Calendar.current.date(
        from: DateComponents(year: 2023, month: 1, day: 1, hour: 12, minute: 0, second: 0))!

    // 测试: 几秒后 (in a few seconds)
    let inAFewSeconds = Calendar.current.date(byAdding: .second, value: 10, to: now)!
    let relativeTime1 = SwiftRelativeTime(inAFewSeconds, now: now)
    #expect(relativeTime1 == .inAFewSeconds)

    // 测试: 1分钟后 (in a minute)
    let inAMinute = Calendar.current.date(byAdding: .minute, value: 1, to: now)!
    let relativeTime2 = SwiftRelativeTime(inAMinute, now: now)
    #expect(relativeTime2 == .inAMinute)

    // 测试: 几分钟后 (in minutes)
    let inMinutes = Calendar.current.date(byAdding: .minute, value: 5, to: now)!
    let relativeTime3 = SwiftRelativeTime(inMinutes, now: now)
    #expect(relativeTime3 == .inMinutes(5))

    // 测试: 1小时后 (in an hour)
    let inAnHour = Calendar.current.date(byAdding: .hour, value: 1, to: now)!
    let relativeTime4 = SwiftRelativeTime(inAnHour, now: now)
    #expect(relativeTime4 == .inAnHour)

    // 测试: 几小时后 (in hours)
    let inHours = Calendar.current.date(byAdding: .hour, value: 3, to: now)!
    let relativeTime5 = SwiftRelativeTime(inHours, now: now)
    #expect(relativeTime5 == .inHours(3))

    // 测试: 1天后 (in a day)
    let inADay = Calendar.current.date(byAdding: .day, value: 1, to: now)!
    let relativeTime6 = SwiftRelativeTime(inADay, now: now)
    #expect(relativeTime6 == .inADay)

    // 测试: 几天后 (in days)
    let inDays = Calendar.current.date(byAdding: .day, value: 5, to: now)!
    let relativeTime7 = SwiftRelativeTime(inDays, now: now)
    #expect(relativeTime7 == .inDays(5))

    // 测试: 1个月后 (in a month)
    let inAMonth = Calendar.current.date(byAdding: .month, value: 1, to: now)!
    let relativeTime8 = SwiftRelativeTime(inAMonth, now: now)
    #expect(relativeTime8 == .inAMonth)

    // 测试: 几个月后 (in months)
    let inMonths = Calendar.current.date(byAdding: .month, value: 3, to: now)!
    let relativeTime9 = SwiftRelativeTime(inMonths, now: now)
    #expect(relativeTime9 == .inMonths(3))

    // 测试: 1年后 (in a year)
    let inAYear = Calendar.current.date(byAdding: .year, value: 1, to: now)!
    let relativeTime10 = SwiftRelativeTime(inAYear, now: now)
    #expect(relativeTime10 == .inAYear)

    // 测试: 几年后 (in years)
    let inYears = Calendar.current.date(byAdding: .year, value: 5, to: now)!
    let relativeTime11 = SwiftRelativeTime(inYears, now: now)
    #expect(relativeTime11 == .inYears(5))
}

// 测试国际化翻译完整性
@Test func testI18nTranslationCompleteness() throws {
    guard let bundlePath = Bundle.module.resourcePath else {
        return
    }

    // 查找所有可用的语言包
    let fileManager = FileManager.default
    let contents = try fileManager.contentsOfDirectory(atPath: bundlePath)
    let languageBundles = contents.filter { $0.hasSuffix(".lproj") }

    guard !languageBundles.isEmpty else {
        return
    }

    print("找到以下语言包: \(languageBundles)")

    // 对于每种语言，测试翻译是否正确
    for languageBundle in languageBundles {
        let languageCode = languageBundle.replacingOccurrences(of: ".lproj", with: "")

        // 尝试从特定语言包加载Localizable.strings文件
        let languageBundlePath = "\(bundlePath)/\(languageBundle)"
        guard let langBundle = Bundle(path: languageBundlePath) else {
            print("警告: 无法加载语言包: \(languageBundlePath)")
            continue
        }

        let numbersOfUnTranslatedKeys: Int = I18n.allStringKeys.filter {
            let translation = NSLocalizedString($0, bundle: langBundle, comment: "")
            return translation.hasPrefix("@")
        }.count

        #expect(
            numbersOfUnTranslatedKeys == 0, "\(languageCode)语言下有\(numbersOfUnTranslatedKeys)个未翻译键")

    }
}

// 测试本地化字符串替换功能
@Test func testLocalizedStringReplacement() throws {
    // 测试过去时间的本地化字符串替换
    let minutesTest = I18n.localizedString(minutes: 5)
    #expect(minutesTest.contains("5"), "minutes参数替换失败")

    let hoursTest = I18n.localizedString(hours: 3)
    #expect(hoursTest.contains("3"), "hours参数替换失败")

    let daysTest = I18n.localizedString(days: 7)
    #expect(daysTest.contains("7"), "days参数替换失败")

    let monthsTest = I18n.localizedString(months: 12)
    #expect(monthsTest.contains("12"), "months参数替换失败")

    let yearsTest = I18n.localizedString(years: 2)
    #expect(yearsTest.contains("2"), "years参数替换失败")

    // 测试未来时间的本地化字符串替换
    let inMinutesTest = I18n.localizedString(inMinutes: 10)
    #expect(inMinutesTest.contains("10"), "inMinutes参数替换失败")

    let inHoursTest = I18n.localizedString(inHours: 4)
    #expect(inHoursTest.contains("4"), "inHours参数替换失败")

    let inDaysTest = I18n.localizedString(inDays: 14)
    #expect(inDaysTest.contains("14"), "inDays参数替换失败")

    let inMonthsTest = I18n.localizedString(inMonths: 6)
    #expect(inMonthsTest.contains("6"), "inMonths参数替换失败")

    let inYearsTest = I18n.localizedString(inYears: 20)
    #expect(inYearsTest.contains("20"), "inYears参数替换失败")

    // 测试特殊数字情况（0和负数）
    let zeroMinutesTest = I18n.localizedString(minutes: 0)
    #expect(zeroMinutesTest.contains("0"), "zero minutes参数替换失败")

    // 测试大数字
    let largeNumberTest = I18n.localizedString(days: 999)
    #expect(largeNumberTest.contains("999"), "large number参数替换失败")

    // 测试description属性是否正确调用了本地化方法
    let now = Date()
    let minutesLater = Calendar.current.date(byAdding: .minute, value: 30, to: now)!
    let relativeTime = SwiftRelativeTime(minutesLater, now: now)
    #expect(relativeTime.description.contains("30"), "description中的参数替换失败")
}
