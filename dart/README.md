# Barcode Generator API - Dart/Flutter Client

Barcode Generator is a simple tool for generating barcodes from data. It returns a URL to the generated image of the barcode.

[![pub package](https://img.shields.io/pub/v/apiverve_barcodegenerator.svg)](https://pub.dev/packages/apiverve_barcodegenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Barcode Generator API](https://apiverve.com/marketplace/barcodegenerator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_barcodegenerator: ^1.1.13
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
    "imageName": "57a22bf2-102a-4dfa-a65c-e521d05a9355.png",
    "format": ".png",
    "type": "CODE128",
    "expires": 1740173338237,
    "downloadURL": "https://storage.googleapis.com/apiverve.appspot.com/barcodegenerator/57a22bf2-102a-4dfa-a65c-e521d05a9355.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1740173338&Signature=aFYDIpRA8Qy83jM7eXcknt8O0Pm5OqeLMNLgPOS6r3pTKcpha2u5pmYsweWEl%2BUsvW%2Fi2%2BKK7HtINdRItTuzQoxWkkyU2xBQAy%2B5jPCN0VoiGin6nEcvAxI6Vklw0nlp6yCnenUffaY1xNq%2FVfGQQTa74EOZweNRD7ZDblM7DRFtwMWQyJxkf5Yqae%2BtFvctVebgru%2B4Yj%2BXoNZaXckRNHMz5VxH7saAGxnVc0tKI0ypCg76cZeD8etIv2Jvv1VuhO8nKl6c4pE%2FeH16gJu2DWRAjRG%2F%2BXwwY7Uxpz%2BZ7VcfuNXbUuCDyQN2wMNgGaaZlR%2F4ISIs5N%2Bh29Ko8vnRBw%3D%3D"
  }
}
```

## API Reference

- **API Home:** [Barcode Generator API](https://apiverve.com/marketplace/barcodegenerator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/barcodegenerator](https://docs.apiverve.com/ref/barcodegenerator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
