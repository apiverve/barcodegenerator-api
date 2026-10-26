# Barcode Generator API - Dart/Flutter Client

Barcode Generator creates downloadable barcode images from text or product codes in Code 128 or Code 39 formats. Each response provides a temporary image download link, file format, and expiration timestamp.

[![pub package](https://img.shields.io/pub/v/apiverve_barcodegenerator.svg)](https://pub.dev/packages/apiverve_barcodegenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Barcode Generator API](https://apiverve.com/marketplace/barcodegenerator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_barcodegenerator: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_barcodegenerator/apiverve_barcodegenerator.dart';

void main() async {
  final client = BarcodegeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'data': '51001544700',
      'type': 'code128',
      'lineColor': '#000000',
      'backgroundColor': '#FFFFFF',
      'displayValue': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "imageName": "cc85680f-a1d0-4627-89ff-7d7e53663a2b.png",
    "format": ".png",
    "type": "CODE128",
    "expires": 1766010012598,
    "downloadURL": "https://storage.googleapis.com/apiverve/APIData/barcodegenerator/cc85680f-a1d0-4627-89ff-7d7e53663a2b.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010012&Signature=cV6ANXGGaVDdl5SOFZt3xm2haHBnOklW1zXQICvJlGNlF4kwYVP9i%2F1RAN8NBGxSUiMk4Zcro%2FJUb3W%2Fwy8jA86pyEXTwIjNAiGW94ikpKSXs6%2FiV42Rwv6u2gX%2B2FH7XYyixlwJ%2B%2FHpfGcvka6u01FDk%2F2TUcR7%2FxsZ%2FmXPU2KTrzsI6XttCGBcHhex3LdTv%2F8tzMJbSshbZn%2BGcRTddwv6dC4lCcTtGE6Bl2zqY9s92KIr9X%2F4xj34q4XKBzywgXES57QaVhZeGPPOOUfLtI3pAN8fVSyM%2B9NBMU7R46xyqJ0J8PSVpQZhhAHn03T%2B40rcNp26GXqauM9K%2BLwZRw%3D%3D"
  }
}
```

## API Reference

- **API Home:** [Barcode Generator API](https://apiverve.com/marketplace/barcodegenerator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/barcodegenerator](https://docs.apiverve.com/ref/barcodegenerator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
