import Foundation
import SwiftUI

#if os(iOS)

@available(iOS 16, *)
struct RelativeTimeTestView: View {
    @State private var selectedLanguage: String = "en"
    @State private var comparisonDate: Date = .init()
    @State private var nowDate: Date = .init()
    @State private var languages: [String] = []
    
    // 时间间隔选项
    private let timeIntervals: [String: TimeInterval] = [
        "刚刚 (< 5秒)": -2,
        "几秒前 (< 60秒)": -30,
        "1分钟前 (< 120秒)": -65,
        "5分钟前": -300,
        "1小时前": -3600,
        "3小时前": -10800,
        "1天前": -86400,
        "3天前": -259200,
        "1个月前": -2592000,
        "3个月前": -7776000,
        "1年前": -31536000,
        "3年前": -94608000
    ]
    
    public init() {
        // 找出bundle中可用的语言
        findAvailableLanguages()
    }
    
    private func findAvailableLanguages() {
        // 获取module bundle
        guard let bundlePath = Bundle.module.resourcePath else {
            languages = ["en"]
            return
        }
        
        // 查找所有.lproj文件夹
        let fileManager = FileManager.default
        do {
            let contents = try fileManager.contentsOfDirectory(atPath: bundlePath)
            languages = contents
                .filter { $0.hasSuffix(".lproj") }
                .map { $0.replacingOccurrences(of: ".lproj", with: "") }
                .sorted()
            
            // 如果没有找到语言文件，默认使用英语
            if languages.isEmpty {
                languages = ["en"]
            }
        } catch {
            languages = ["en"]
        }
    }
    
    private func getRelativeTime() -> String {
        // 创建一个临时的Locale来测试不同语言
        let locale = Locale(identifier: selectedLanguage)
        let formatter = DateFormatter()
        formatter.locale = locale
        
        // 设置bundle的首选语言
        UserDefaults.standard.set([selectedLanguage], forKey: "AppleLanguages")
        
        // 计算相对时间
        let relativeTime = SwiftRelativeTime(comparisonDate, now: nowDate)
        return relativeTime.description
    }
    
    public var body: some View {
        NavigationView {
            Form {
                // 语言选择
                Section(header: Text("选择语言")) {
                    Picker("语言", selection: $selectedLanguage) {
                        ForEach(languages, id: \.self) { language in
                            Text(language).tag(language)
                        }
                    }
                }
                
                // 对比时间选择
                Section(header: Text("选择对比时间")) {
                    DatePicker("对比时间", selection: $comparisonDate, displayedComponents: [.date, .hourAndMinute])
                    
                    // 快速选择常用时间间隔
                    VStack(alignment: .leading) {
                        Text("快速选择:")
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(timeIntervals.keys.sorted(), id: \.self) { label in
                                    Button(action: {
                                        if let interval = timeIntervals[label] {
                                            comparisonDate = Date(timeIntervalSinceNow: interval)
                                        }
                                    }) {
                                        Text(label)
                                            .padding(6)
                                            .background(Color.blue.opacity(0.1))
                                            .cornerRadius(4)
                                            .font(.caption)
                                    }
                                }
                            }
                        }
                    }
                }
                
                // Now时间选择
                Section(header: Text("选择Now时间")) {
                    DatePicker("Now时间", selection: $nowDate, displayedComponents: [.date, .hourAndMinute])
                    
                    Button("使用当前时间") {
                        nowDate = Date()
                    }
                }
                
                // 相对时间显示
                Section(header: Text("相对时间结果")) {
                    Text(getRelativeTime())
                        .font(.headline)
                        .padding()
                        .background(Color.green.opacity(0.1))
                        .cornerRadius(8)
                }
                
                // 时间详情
                Section(header: Text("时间详情")) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("对比时间: \(formattedDate(comparisonDate))")
                        Text("Now时间: \(formattedDate(nowDate))")
                        Text("时间差: \(formattedTimeInterval())")
                    }
                }
            }
            .navigationTitle("RelativeTime测试")
        }
    }
    
    public func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter.string(from: date)
    }
    
    public func formattedTimeInterval() -> String {
        let interval = nowDate.timeIntervalSince(comparisonDate)
        
        if interval < 60 {
            return String(format: "%.0f秒", interval)
        } else if interval < 3600 {
            return String(format: "%.0f分钟", interval / 60)
        } else if interval < 86400 {
            return String(format: "%.0f小时", interval / 3600)
        } else {
            return String(format: "%.1f天", interval / 86400)
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
