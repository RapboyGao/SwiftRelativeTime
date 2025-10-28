# 🕒 SwiftRelativeTime

## 📚 다국어 지원 | Multilingual Support

- 🇬🇧 [English](./README.md)
- 🇨🇳 [中文](./README-zh.md)
- 🇪🇸 [Español](./README-es.md)
- 🇯🇵 [日本語](./README-ja.md)
- 🇰🇷 [한국어 (기본)](#)

[![](https://img.shields.io/badge/Swift-6.0-FFAC45.svg)](https://swift.org/)
[![](https://img.shields.io/badge/platform-iOS%20%7C%20macOS%20%7C%20watchOS%20%7C%20tvOS-blue.svg)](https://github.com/RapboyGao/SwiftRelativeTime)
[![](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/RapboyGao/SwiftRelativeTime/blob/main/LICENSE)

인간이 읽기 쉬운 형식으로 상대 시간을 표시하기 위한 가벼운 Swift 라이브러리입니다. 날짜를 "방금 전", "5분 전", "3일 후"와 같은 친숙한 문자열로 변환합니다.

**[GitHub 리포지토리](https://github.com/RapboyGao/SwiftRelativeTime.git)**

## 기능

- 날짜를 인간이 읽기 쉬운 상대 시간 문자열로 변환
- 과거와 미래 시간 참조 모두 지원
- 포괄적인 시간 단위 지원: 초, 분, 시간, 일, 월, 년
- 내장된 국제화 지원
- Swift 6.0 호환
- 크로스 플랫폼 지원 (iOS, macOS, watchOS, tvOS)

## 설치

### Swift Package Manager

패키지를 `Package.swift` 파일에 추가하거나 Xcode를 통해 추가하세요:

```swift
dependencies: [
    .package(url: "https://github.com/RapboyGao/SwiftRelativeTime.git", from: "1.0.0")
]
```

그런 다음 타겟에 종속성을 추가합니다:

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: ["SwiftRelativeTime"]
    )
]
```

## 사용 방법

### 기본 사용법

```swift
import SwiftRelativeTime

// 과거의 날짜 생성
let pastDate = Date(timeIntervalSinceNow: -3600) // 1시간 전
let relativeTime = SwiftRelativeTime(pastDate)
print(relativeTime) // "1시간 전"

// 미래의 날짜 생성
let futureDate = Date(timeIntervalSinceNow: 86400) // 1일 후
let futureRelativeTime = SwiftRelativeTime(futureDate)
print(futureRelativeTime) // "1일 후"
```

### 사용자 정의 참조 날짜

사용자 정의 참조 날짜를 지정할 수도 있습니다 (기본값은 현재 날짜):

```swift
let someDate = Date()
let referenceDate = Date(timeIntervalSinceNow: 7200) // 2시간 후
let relativeTime = SwiftRelativeTime(someDate, now: referenceDate)
```

## 국제화

SwiftRelativeTime은 Swift의 표준 `NSLocalizedString`을 사용하여 완전히 국제화되었습니다. 기본 로컬라이제이션은 영어입니다.

추가 언어를 지원하려면:

1. 프로젝트에 새 `.strings` 파일을 만듭니다
2. 라이브러리의 모든 문자열 키를 복사합니다 (`I18n.allStringKeys`를 통해 액세스할 수 있습니다)
3. 값을 대상 언어로 번역합니다
4. 파일이 올바른 로케일 식별자로 앱 번들에 올바르게 포함되어 있는지 확인합니다

## 지원되는 상대 시간 형식

### 과거 시간

- `justNow` - 지난 몇 초 이내의 시간
- `aFewSecondsAgo` - 5-59초 전의 시간
- `aMinuteAgo` - 정확히 1분 전의 시간
- `minutesAgo(Int)` - 여러 분 전의 시간
- `anHourAgo` - 정확히 1시간 전의 시간
- `hoursAgo(Int)` - 여러 시간 전의 시간
- `aDayAgo` - 정확히 1일 전의 시간
- `daysAgo(Int)` - 여러 일 전의 시간
- `aMonthAgo` - 정확히 1개월 전의 시간
- `monthsAgo(Int)` - 여러 달 전의 시간
- `aYearAgo` - 정확히 1년 전의 시간
- `yearsAgo(Int)` - 여러 년 전의 시간

### 미래 시간

- `inAFewSeconds` - 앞으로 몇 초 이내의 시간
- `inAMinute` - 정확히 1분 후의 시간
- `inMinutes(Int)` - 여러 분 후의 시간
- `inAnHour` - 정확히 1시간 후의 시간
- `inHours(Int)` - 여러 시간 후의 시간
- `inADay` - 정확히 1일 후의 시간
- `inDays(Int)` - 여러 일 후의 시간
- `inAMonth` - 정확히 1개월 후의 시간
- `inMonths(Int)` - 여러 달 후의 시간
- `inAYear` - 정확히 1년 후의 시간
- `inYears(Int)` - 여러 년 후의 시간

## 요구 사항

- Swift 6.0 이상

## 라이선스

이 프로젝트는 MIT 라이선스에 따라 라이선스가 부여됩니다 - 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.

## 기여

기여를 환영합니다! Pull Request를 자유롭게 제출해 주세요。