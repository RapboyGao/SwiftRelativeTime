# 🕒 SwiftRelativeTime

## 📚 多言語サポート | Multilingual Support

- 🇬🇧 [English](./README.md)
- 🇨🇳 [中文](./README-zh.md)
- 🇪🇸 [Español](./README-es.md)
- 🇯🇵 [日本語 (デフォルト)](#)
- 🇰🇷 [한국어](./README-ko.md)

[![](https://img.shields.io/badge/Swift-6.0-FFAC45.svg)](https://swift.org/)
[![](https://img.shields.io/badge/platform-iOS%20%7C%20macOS%20%7C%20watchOS%20%7C%20tvOS-blue.svg)](https://github.com/RapboyGao/SwiftRelativeTime)
[![](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/RapboyGao/SwiftRelativeTime/blob/main/LICENSE)

人間が読みやすい形式で相対時間を表示するための軽量なSwiftライブラリです。日付を「たった今」、「5分前」、「3日後」などの友好的な文字列に変換します。

**[GitHub リポジトリ](https://github.com/RapboyGao/SwiftRelativeTime.git)**

## 特徴

- 日付を人間が読みやすい相対時間文字列に変換
- 過去と未来の時間参照の両方をサポート
- 包括的な時間単位サポート：秒、分、時間、日、月、年
- 組み込みの国際化サポート
- Swift 6.0 互換
- クロスプラットフォームサポート（iOS、macOS、watchOS、tvOS）

## インストール

### Swift Package Manager

パッケージを`Package.swift`ファイルまたはXcode経由で追加します：

```swift
dependencies: [
    .package(url: "https://github.com/RapboyGao/SwiftRelativeTime.git", from: "1.0.0")
]
```

次に、依存関係をターゲットに追加します：

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: ["SwiftRelativeTime"]
    )
]
```

## 使用方法

### 基本的な使用方法

```swift
import SwiftRelativeTime

// 過去の日付を作成
let pastDate = Date(timeIntervalSinceNow: -3600) // 1時間前
let relativeTime = SwiftRelativeTime(pastDate)
print(relativeTime) // "1時間前"

// 未来の日付を作成
let futureDate = Date(timeIntervalSinceNow: 86400) // 1日後
let futureRelativeTime = SwiftRelativeTime(futureDate)
print(futureRelativeTime) // "1日後"
```

### カスタム参照日付

カスタムの参照日付を指定することもできます（デフォルトは現在の日付）：

```swift
let someDate = Date()
let referenceDate = Date(timeIntervalSinceNow: 7200) // 2時間後
let relativeTime = SwiftRelativeTime(someDate, now: referenceDate)
```

## 国際化

SwiftRelativeTimeは、Swiftの標準的な`NSLocalizedString`を使用して完全に国際化されています。デフォルトのローカライゼーションは英語です。

他の言語のサポートを追加するには：

1. プロジェクトに新しい`.strings`ファイルを作成します
2. ライブラリからすべての文字列キーをコピーします（`I18n.allStringKeys`を介してアクセスできます）
3. 値をターゲット言語に翻訳します
4. ファイルが正しいロケール識別子でアプリケーションバンドルに正しく含まれていることを確認します

## サポートされている相対時間形式

### 過去の時間

- `justNow` - 数秒以内の時間
- `aFewSecondsAgo` - 5〜59秒前の時間
- `aMinuteAgo` - ちょうど1分前の時間
- `minutesAgo(Int)` - 複数の分前の時間
- `anHourAgo` - ちょうど1時間前の時間
- `hoursAgo(Int)` - 複数の時間前の時間
- `aDayAgo` - ちょうど1日前の時間
- `daysAgo(Int)` - 複数の日前の時間
- `aMonthAgo` - ちょうど1ヶ月前の時間
- `monthsAgo(Int)` - 複数のヶ月前の時間
- `aYearAgo` - ちょうど1年前の時間
- `yearsAgo(Int)` - 複数の年前の時間

### 未来の時間

- `inAFewSeconds` - 数秒以内の未来の時間
- `inAMinute` - ちょうど1分後の時間
- `inMinutes(Int)` - 複数の分後の時間
- `inAnHour` - ちょうど1時間後の時間
- `inHours(Int)` - 複数の時間後の時間
- `inADay` - ちょうど1日後の時間
- `inDays(Int)` - 複数の日後の時間
- `inAMonth` - ちょうど1ヶ月後の時間
- `inMonths(Int)` - 複数のヶ月後の時間
- `inAYear` - ちょうど1年後の時間
- `inYears(Int)` - 複数の年後の時間

## 要件

- Swift 6.0以降

## ライセンス

このプロジェクトはMITライセンスの下でライセンスされています - 詳細については[LICENSE](LICENSE)ファイルを参照してください。

## 貢献

貢献は歓迎されます！お気軽にPull Requestを送信してください。