달력 띄우기
==

example
--
```dart
Future<DateTime?> selectedDate = showDatePicker(
 context: context,
 initialDate: DateTime.now(), // 초깃값
 firstDate: DateTime(2020), // 시작일
 lastDate: DateTime.now(), // 마지막일
);
```

문제점
--

- 달력이 영어로 출력된다.


해결방법
--

- pubspec.yaml
```dart
flutter_localizations:
  sdk: flutter
```
- main.dart
```dart
  MaterialApp(
      title: 'TEST APP',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('ko', 'KO'),
      ],
     ),
````
