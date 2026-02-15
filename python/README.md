Barcode Generator API
============

Barcode Generator is a simple tool for generating barcodes from data. It returns a URL to the generated image of the barcode.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Barcode Generator API](https://apiverve.com/marketplace/barcodegenerator?utm_source=pypi&utm_medium=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-barcodegenerator
```

Using `pip3`:

```bash
pip3 install apiverve-barcodegenerator
```

---

## Configuration

Before using the barcodegenerator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_barcodegenerator.apiClient import BarcodegeneratorAPIClient

# Initialize the client with your APIVerve API key
api = BarcodegeneratorAPIClient("[YOUR_API_KEY]")

query = { "data": "51001544700", "type": "code128", "lineColor": "#000000", "backgroundColor": "#FFFFFF", "displayValue": true }

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Barcode Generator API documentation is found here: [https://docs.apiverve.com/ref/barcodegenerator](https://docs.apiverve.com/ref/barcodegenerator?utm_source=pypi&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_barcodegenerator.apiClient import BarcodegeneratorAPIClient

# Initialize the client with your APIVerve API key
api = BarcodegeneratorAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = { "data": "51001544700", "type": "code128", "lineColor": "#000000", "backgroundColor": "#FFFFFF", "displayValue": true }
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

---

## Error Handling

The API client provides comprehensive error handling through the `BarcodegeneratorAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_barcodegenerator.apiClient import BarcodegeneratorAPIClient, BarcodegeneratorAPIClientError

api = BarcodegeneratorAPIClient("[YOUR_API_KEY]")

query = { "data": "51001544700", "type": "code128", "lineColor": "#000000", "backgroundColor": "#FFFFFF", "displayValue": true }

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except BarcodegeneratorAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_barcodegenerator.apiClient import BarcodegeneratorAPIClient, BarcodegeneratorAPIClientError

api = BarcodegeneratorAPIClient("[YOUR_API_KEY]")

query = { "data": "51001544700", "type": "code128", "lineColor": "#000000", "backgroundColor": "#FFFFFF", "displayValue": true }

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except BarcodegeneratorAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_barcodegenerator.apiClient import BarcodegeneratorAPIClient, BarcodegeneratorAPIClientError

query = { "data": "51001544700", "type": "code128", "lineColor": "#000000", "backgroundColor": "#FFFFFF", "displayValue": true }

# Using context manager ensures proper cleanup
with BarcodegeneratorAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except BarcodegeneratorAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_barcodegenerator.apiClient import BarcodegeneratorAPIClient

# Enable debug mode
api = BarcodegeneratorAPIClient("[YOUR_API_KEY]", debug=True)

query = { "data": "51001544700", "type": "code128", "lineColor": "#000000", "backgroundColor": "#FFFFFF", "displayValue": true }

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_barcodegenerator.apiClient import BarcodegeneratorAPIClient

api = BarcodegeneratorAPIClient("[YOUR_API_KEY]")

try:
    query = { "data": "51001544700", "type": "code128", "lineColor": "#000000", "backgroundColor": "#FFFFFF", "displayValue": true }
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
