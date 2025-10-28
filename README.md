# 🕒 SwiftRelativeTime

[![](https://img.shields.io/badge/Swift-6.0-FFAC45.svg)](https://swift.org/)
[![](https://img.shields.io/badge/platform-iOS%20%7C%20macOS%20%7C%20watchOS%20%7C%20tvOS-blue.svg)](https://github.com/RapboyGao/SwiftRelativeTime)
[![](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/RapboyGao/SwiftRelativeTime/blob/main/LICENSE)

A lightweight Swift library for displaying relative time in a human-readable format. Convert dates to friendly strings like "just now", "5 minutes ago", or "3 days from now".

**[GitHub Repository](https://github.com/RapboyGao/SwiftRelativeTime.git)**

## Features

- Convert dates to human-readable relative time strings
- Support for both past and future time references
- Comprehensive time unit support: seconds, minutes, hours, days, months, and years
- Built-in internationalization support
- Swift 6.0 compatible
- Cross-platform support (iOS, macOS, watchOS, tvOS)

## Installation

### Swift Package Manager

Add the package to your `Package.swift` file or through Xcode:

```swift
dependencies: [
    .package(url: "https://github.com/RapboyGao/SwiftRelativeTime.git", from: "1.0.0")
]
```

Then add the dependency to your target:

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: ["SwiftRelativeTime"]
    )
]
```

## Usage

### Basic Usage

```swift
import SwiftRelativeTime

// Create a date from the past
let pastDate = Date(timeIntervalSinceNow: -3600) // 1 hour ago
let relativeTime = SwiftRelativeTime(pastDate)
print(relativeTime) // "An hour ago"

// Create a date for the future
let futureDate = Date(timeIntervalSinceNow: 86400) // 1 day from now
let futureRelativeTime = SwiftRelativeTime(futureDate)
print(futureRelativeTime) // "In a day"
```

### Custom Reference Date

You can also specify a custom reference date (defaults to current date):

```swift
let someDate = Date()
let referenceDate = Date(timeIntervalSinceNow: 7200) // 2 hours from now
let relativeTime = SwiftRelativeTime(someDate, now: referenceDate)
```

## Internationalization

SwiftRelativeTime is fully internationalized using Swift's standard `NSLocalizedString`. The default localization is English.

To add support for additional languages:

1. Create a new `.strings` file in your project
2. Copy all the string keys from the library (you can access them via `I18n.allStringKeys`)
3. Translate the values to your target language
4. Ensure the file is properly included in your app bundle with the correct locale identifier

## Supported Relative Time Formats

### Past Time
- `justNow` - For times within the last few seconds
- `aFewSecondsAgo` - For times between 5-59 seconds ago
- `aMinuteAgo` - For exactly 1 minute ago
- `minutesAgo(Int)` - For multiple minutes ago
- `anHourAgo` - For exactly 1 hour ago
- `hoursAgo(Int)` - For multiple hours ago
- `aDayAgo` - For exactly 1 day ago
- `daysAgo(Int)` - For multiple days ago
- `aMonthAgo` - For exactly 1 month ago
- `monthsAgo(Int)` - For multiple months ago
- `aYearAgo` - For exactly 1 year ago
- `yearsAgo(Int)` - For multiple years ago

### Future Time
- `inAFewSeconds` - For times within the next few seconds
- `inAMinute` - For exactly 1 minute from now
- `inMinutes(Int)` - For multiple minutes from now
- `inAnHour` - For exactly 1 hour from now
- `inHours(Int)` - For multiple hours from now
- `inADay` - For exactly 1 day from now
- `inDays(Int)` - For multiple days from now
- `inAMonth` - For exactly 1 month from now
- `inMonths(Int)` - For multiple months from now
- `inAYear` - For exactly 1 year from now
- `inYears(Int)` - For multiple years from now

## Requirements

- Swift 6.0 or later
- iOS 13.0+, macOS 10.15+, watchOS 6.0+, tvOS 13.0+

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.