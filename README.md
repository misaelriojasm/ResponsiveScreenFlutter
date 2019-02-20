# Flutter Responsive Screen

Using percentages to make the most accurate design views.

## Installation

On Flutter Dependencies "*pubspec.yaml*"
```yaml
dependencies:
  flutter:
    sdk: flutter
  responsive_screen: ^1.0.0
```

## Usage

```dart
...
import 'package:flutter_responsive_screen/..';

...
// (context){
  final Function wp = Screen(context).wp;
  final Function hp = Screen(context).hp;
  ...
  // Container(hp,wp){
    dynamic wp = Wp(context).wp;
    dynamic hp = Hp(context).hp;
...
// (widget)
   SizedBox(height: hp(20), weight:wp(20)),

```

## #About

[@MisaelRiojasMontenegro](https://github.com/misaelriojasm)