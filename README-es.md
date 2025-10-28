# 🕒 SwiftRelativeTime

## 📚 多语言支持 | Multilingual Support

- 🇬🇧 [English](./README.md)
- 🇨🇳 [中文](./README-zh.md)
- 🇪🇸 [Español (predeterminado)](#)
- 🇯🇵 [日本語](./README-ja.md)
- 🇰🇷 [한국어](./README-ko.md)

[![](https://img.shields.io/badge/Swift-6.0-FFAC45.svg)](https://swift.org/)
[![](https://img.shields.io/badge/platform-iOS%20%7C%20macOS%20%7C%20watchOS%20%7C%20tvOS-blue.svg)](https://github.com/RapboyGao/SwiftRelativeTime)
[![](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/RapboyGao/SwiftRelativeTime/blob/main/LICENSE)

Una biblioteca ligera de Swift para mostrar el tiempo relativo en un formato legible por humanos. Convierte fechas en cadenas amigables como "justo ahora", "hace 5 minutos" o "dentro de 3 días".

**[Repositorio de GitHub](https://github.com/RapboyGao/SwiftRelativeTime.git)**

## Características

- Convierte fechas en cadenas de tiempo relativo legibles por humanos
- Soporte para referencias de tiempo pasadas y futuras
- Soporte completo de unidades de tiempo: segundos, minutos, horas, días, meses y años
- Soporte de internacionalización integrado
- Compatible con Swift 6.0
- Soporte multiplataforma (iOS, macOS, watchOS, tvOS)

## Instalación

### Swift Package Manager

Agrega el paquete a tu archivo `Package.swift` o a través de Xcode:

```swift
dependencies: [
    .package(url: "https://github.com/RapboyGao/SwiftRelativeTime.git", from: "1.0.0")
]
```

Luego agrega la dependencia a tu objetivo:

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: ["SwiftRelativeTime"]
    )
]
```

## Uso

### Uso básico

```swift
import SwiftRelativeTime

// Crea una fecha del pasado
let pastDate = Date(timeIntervalSinceNow: -3600) // hace 1 hora
let relativeTime = SwiftRelativeTime(pastDate)
print(relativeTime) // "Hace una hora"

// Crea una fecha del futuro
let futureDate = Date(timeIntervalSinceNow: 86400) // en 1 día
let futureRelativeTime = SwiftRelativeTime(futureDate)
print(futureRelativeTime) // "En un día"
```

### Fecha de referencia personalizada

También puedes especificar una fecha de referencia personalizada (por defecto es la fecha actual):

```swift
let someDate = Date()
let referenceDate = Date(timeIntervalSinceNow: 7200) // en 2 horas
let relativeTime = SwiftRelativeTime(someDate, now: referenceDate)
```

## Internacionalización

SwiftRelativeTime está completamente internacionalizado usando el estándar `NSLocalizedString` de Swift. La localización predeterminada es el inglés.

Para agregar soporte para otros idiomas:

1. Crea un nuevo archivo `.strings` en tu proyecto
2. Copia todas las claves de cadena de la biblioteca (puedes acceder a ellas a través de `I18n.allStringKeys`)
3. Traduce los valores a tu idioma objetivo
4. Asegúrate de que el archivo esté correctamente incluido en tu paquete de aplicación con el identificador de configuración regional correcto

## Formatos de tiempo relativo compatibles

### Tiempo pasado

- `justNow` - Para tiempos dentro de los últimos pocos segundos
- `aFewSecondsAgo` - Para tiempos entre 5-59 segundos atrás
- `aMinuteAgo` - Para exactamente 1 minuto atrás
- `minutesAgo(Int)` - Para múltiples minutos atrás
- `anHourAgo` - Para exactamente 1 hora atrás
- `hoursAgo(Int)` - Para múltiples horas atrás
- `aDayAgo` - Para exactamente 1 día atrás
- `daysAgo(Int)` - Para múltiples días atrás
- `aMonthAgo` - Para exactamente 1 mes atrás
- `monthsAgo(Int)` - Para múltiples meses atrás
- `aYearAgo` - Para exactamente 1 año atrás
- `yearsAgo(Int)` - Para múltiples años atrás

### Tiempo futuro

- `inAFewSeconds` - Para tiempos dentro de los próximos pocos segundos
- `inAMinute` - Para exactamente 1 minuto desde ahora
- `inMinutes(Int)` - Para múltiples minutos desde ahora
- `inAnHour` - Para exactamente 1 hora desde ahora
- `inHours(Int)` - Para múltiples horas desde ahora
- `inADay` - Para exactamente 1 día desde ahora
- `inDays(Int)` - Para múltiples días desde ahora
- `inAMonth` - Para exactamente 1 mes desde ahora
- `inMonths(Int)` - Para múltiples meses desde ahora
- `inAYear` - Para exactamente 1 año desde ahora
- `inYears(Int)` - Para múltiples años desde ahora

## Requisitos

- Swift 6.0 o posterior

## Licencia

Este proyecto está licenciado bajo la Licencia MIT - consulta el archivo [LICENSE](LICENSE) para obtener más detalles.

## Contribuciones

¡Las contribuciones son bienvenidas! No dudes en enviar una Pull Request.