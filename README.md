# flutter_showtime

A flutter wrapper around the ShowTime Cocoapod. Allows you to easily view touch events in iOS.

Requires minimum deployment target of 8.2 or higher.

**Note:** this is a no-op in Android and is only valid for iOS.

![AsYouType real-time formatting](https://media.giphy.com/media/jUWwSFqEswBdpPiFii/giphy.gif)

## Getting Started

Add this project to your `pubspec.yaml`:
```yaml
  flutter_showtime: ^0.0.1
```

Enable / disable touch events:
```dart
await FlutterShowtime.enable();
```

## API Reference
## `Future<void> enable()`
Enable visible touch events.

## `Future<void> disable()`
Disable visible touch events.