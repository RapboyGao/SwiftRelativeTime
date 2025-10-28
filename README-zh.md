# 🕒 SwiftRelativeTime

## 📚 多语言支持 | Multilingual Support

- 🇬🇧 [English](./README.md)
- 🇨🇳 [中文 (默认)](#)
- 🇪🇸 [Español](./README-es.md)
- 🇯🇵 [日本語](./README-ja.md)
- 🇰🇷 [한국어](./README-ko.md)

[![](https://img.shields.io/badge/Swift-6.0-FFAC45.svg)](https://swift.org/)
[![](https://img.shields.io/badge/platform-iOS%20%7C%20macOS%20%7C%20watchOS%20%7C%20tvOS-blue.svg)](https://github.com/RapboyGao/SwiftRelativeTime)
[![](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/RapboyGao/SwiftRelativeTime/blob/main/LICENSE)

一个轻量级的Swift库，用于以人类可读的格式显示相对时间。将日期转换为友好的字符串，如"刚刚"、"5分钟前"或"3天后"。

**[GitHub 仓库](https://github.com/RapboyGao/SwiftRelativeTime.git)**

## 特性

- 将日期转换为人类可读的相对时间字符串
- 支持过去和未来的时间引用
- 全面的时间单位支持：秒、分钟、小时、天、月和年
- 内置国际化支持
- 兼容Swift 6.0
- 跨平台支持（iOS、macOS、watchOS、tvOS）

## 安装

### Swift Package Manager

将包添加到您的`Package.swift`文件或通过Xcode：

```swift
dependencies: [
    .package(url: "https://github.com/RapboyGao/SwiftRelativeTime.git", from: "1.0.0")
]
```

然后将依赖项添加到您的目标：

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: ["SwiftRelativeTime"]
    )
]
```

## 使用方法

### 基本用法

```swift
import SwiftRelativeTime

// 创建一个过去的日期
let pastDate = Date(timeIntervalSinceNow: -3600) // 1小时前
let relativeTime = SwiftRelativeTime(pastDate)
print(relativeTime) // "1小时前"

// 创建一个未来的日期
let futureDate = Date(timeIntervalSinceNow: 86400) // 1天后
let futureRelativeTime = SwiftRelativeTime(futureDate)
print(futureRelativeTime) // "1天后"
```

### 自定义参考日期

您还可以指定自定义参考日期（默认为当前日期）：

```swift
let someDate = Date()
let referenceDate = Date(timeIntervalSinceNow: 7200) // 2小时后
let relativeTime = SwiftRelativeTime(someDate, now: referenceDate)
```

## 国际化

SwiftRelativeTime使用Swift标准的`NSLocalizedString`完全国际化。默认语言为英语。

要添加对其他语言的支持：

1. 在您的项目中创建一个新的`.strings`文件
2. 复制库中的所有字符串键（您可以通过`I18n.allStringKeys`访问它们）
3. 将值翻译为您的目标语言
4. 确保文件正确包含在您的应用程序包中，并使用正确的区域设置标识符

## 支持的相对时间格式

### 过去时间

- `justNow` - 用于过去几秒钟内的时间
- `aFewSecondsAgo` - 用于5-59秒前的时间
- `aMinuteAgo` - 用于正好1分钟前的时间
- `minutesAgo(Int)` - 用于多分钟前的时间
- `anHourAgo` - 用于正好1小时前的时间
- `hoursAgo(Int)` - 用于多小时前的时间
- `aDayAgo` - 用于正好1天前的时间
- `daysAgo(Int)` - 用于多天前的时间
- `aMonthAgo` - 用于正好1个月前的时间
- `monthsAgo(Int)` - 用于多个月前的时间
- `aYearAgo` - 用于正好1年前的时间
- `yearsAgo(Int)` - 用于多年前的时间

### 未来时间

- `inAFewSeconds` - 用于未来几秒钟内的时间
- `inAMinute` - 用于正好1分钟后的时间
- `inMinutes(Int)` - 用于多分钟后的时间
- `inAnHour` - 用于正好1小时后的时间
- `inHours(Int)` - 用于多小时后的时间
- `inADay` - 用于正好1天后的时间
- `inDays(Int)` - 用于多天后的时间
- `inAMonth` - 用于正好1个月后的时间
- `inMonths(Int)` - 用于多个月后的时间
- `inAYear` - 用于正好1年后的时间
- `inYears(Int)` - 用于多年后的时间

## 要求

- Swift 6.0或更高版本

## 许可证

本项目采用MIT许可证 - 详情请参阅[LICENSE](LICENSE)文件。

## 贡献

欢迎贡献！请随时提交Pull Request。