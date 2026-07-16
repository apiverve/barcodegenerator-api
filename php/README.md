# Barcode Generator API - PHP Package

Barcode Generator is a simple tool for generating barcodes from data. It returns a URL to the generated image of the barcode.

## Installation

Install via Composer:

```bash
composer require apiverve/barcodegenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Barcodegenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'data' => '51001544700',
    'type' => 'code128',
    'lineColor' => '#000000',
    'backgroundColor' => '#FFFFFF',
    'displayValue' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Barcodegenerator\Client;
use APIVerve\Barcodegenerator\Exceptions\APIException;
use APIVerve\Barcodegenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['data' => '51001544700', 'type' => 'code128', 'lineColor' => '#000000', 'backgroundColor' => '#FFFFFF', 'displayValue' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/barcodegenerator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/barcodegenerator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/barcodegenerator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
