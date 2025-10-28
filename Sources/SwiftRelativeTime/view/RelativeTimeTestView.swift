import Combine
import Foundation
import SwiftUI

#if os(iOS)

    @available(iOS 16, *)
    struct RelativeTimeTestView: View {
        @State private var selectedLanguage: String = "zh-Hans"
        @State private var comparisonDate: Date = .init()
        @State private var nowDate: Date = .init()

        private var timer: Publishers.Autoconnect<Timer.TimerPublisher> {
            Timer
                .publish(every: 0.2, on: .main, in: .common)
                .autoconnect()
        }

        private let languages: [String] = {
            guard let bundlePath = Bundle.module.resourcePath else {
                return []
            }
            // 查找所有可用的语言包
            let fileManager = FileManager.default
            guard let contents = try? fileManager.contentsOfDirectory(atPath: bundlePath)
            else {
                return []
            }
            let languageBundles =
                contents
                .filter { $0.hasSuffix(".lproj") }
                .map { $0.replacingOccurrences(of: ".lproj", with: "") }
                .sorted()
            return languageBundles
        }()

        // 时间间隔选项
        private let timeIntervals: [String: DateComponents] = [
            "刚刚 (< 5秒)": DateComponents(second: -2),
            "几秒前 (< 60秒)": DateComponents(second: -30),
            "1分钟前 (< 120秒)": DateComponents(second: -65),
            "5分钟前": DateComponents(minute: -5, second: -5),
            "1小时前": DateComponents(hour: -1, minute: -5),
            "3小时前": DateComponents(hour: -3, minute: -5),
            "1天前": DateComponents(day: -1, minute: -5),
            "3天前": DateComponents(day: -3, minute: -5),
            "1个月前": DateComponents(month: -1, minute: -5),
            "3个月前": DateComponents(month: -3, minute: -5),
            "1年前": DateComponents(year: -1, minute: -5),
            "3年前": DateComponents(year: -3, minute: -5),
            "几秒后": DateComponents(second: 9),
            "1分钟后": DateComponents(minute: 1, second: 5),
            "5分钟后": DateComponents(minute: 5, second: 5),
            "1小时后": DateComponents(hour: 1, minute: 5),
            "3小时后": DateComponents(hour: 3, minute: 5),
            "1天后": DateComponents(day: 1, minute: 5),
            "3天后": DateComponents(day: 3, minute: 5),
            "1个月后": DateComponents(month: 1, minute: 5),
            "3个月后": DateComponents(month: 3, minute: 5),
            "1年后": DateComponents(year: 1, minute: 5),
            "3年后": DateComponents(year: 3, minute: 5),
        ]

        // 时间间隔选项
        private var timeIntervalKeys: [String] {
            Array(timeIntervals.keys)
        }

        private func setDate(to key: String) {
            if let components = timeIntervals[key] {
                comparisonDate = Calendar.current.date(byAdding: components, to: nowDate)!
            }
        }

        public var body: some View {
            NavigationStack {
                List {
                    Picker("选择语言", selection: $selectedLanguage) {
                        ForEach(languages, id: \.self) { language in
                            Text(language)
                        }
                    }
                    DatePicker("选择时间", selection: $comparisonDate)
                    HStack {
                        Text("快速选择")
                        Spacer()
                        Menu(comparisonDate.ISO8601Format()) {
                            ForEach(timeIntervalKeys, id: \.self) { thisKey in
                                Button(thisKey) {
                                    setDate(to: thisKey)
                                }
                            }
                        }
                    }
                    HStack {
                        Text("现在是")
                        Spacer()
                        Text(nowDate.ISO8601Format())
                    }
                    VStack(alignment: .center) {
                        Text(
                            SwiftRelativeTime(comparisonDate, now: nowDate).localized(
                                in: selectedLanguage)
                        )
                        .font(.title)
                        .padding()
                    }
                }
            }
            .onReceive(timer) { newTime in
                nowDate = newTime
            }
        }
    }

    @available(iOS 16, *)
    struct RelativeTimeTestView_Previews: PreviewProvider {
        static var previews: some View {
            RelativeTimeTestView()
        }
    }

#endif
