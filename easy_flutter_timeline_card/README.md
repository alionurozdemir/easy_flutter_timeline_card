# Easy Flutter Timeline Card

A Flutter package that provides an easy-to-use timeline card widget for creating beautiful timelines in your app. It supports both local assets and network images.

## Features

- Customizable timeline card widget
- Support for adding images from local assets or network URLs
- Automatically handles the connection lines between cards
- Easy to integrate into your Flutter project

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  easy_flutter_timeline_card: ^<latest-version>
  ```

Then run flutter pub get to install the package.

<img src="https://github.com/alionurozdemir/easy_flutter_timeline_card/blob/main/screenshot/cover.png" width="320px" />

## Usage
Import the package in your Dart file:
import 'package:easy_flutter_timeline_card/timeline_card.dart';

Use the TimelineCard widget in your app:

// Using local asset image

```dart
TimelineCard.asset(
  title: 'Asset Image Card',
  subtitle: 'Card Subtitle',
  imageUrl: 'assets/card_image.jpg',
)
```

// Using network image
```dart
TimelineCard.network(
  title: 'Network Image Card',
  subtitle: 'Card Subtitle',
  imageUrl: 'https://example.com/card_image.jpg',
)
```

### Customization

| Parameter | Description |
|-----------|-------------|
| `title` | The title text of the card. |
| `subtitle` | The subtitle text of the card. |
| `imageUrl` | The URL or path of the image to display in the card. Use `TimelineCard.asset` for local asset images and `TimelineCard.network` for network images. |
| `isLast` | A boolean value indicating whether the card is the last one in the timeline. Set it to `true` for the last card to adjust the connection line. |


Example
An example app is available in the example directory of the package. You can run it to see the timeline card in action with both local assets and network images.

### Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on the GitHub repository.

### License
This package is released under the MIT License. See the LICENSE file for more details.

