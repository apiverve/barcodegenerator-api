Barcode Generator API
============

Barcode Generator creates downloadable barcode images from text or product codes in Code 128 or Code 39 formats. Each response provides a temporary image download link, file format, and expiration timestamp.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-barcodegenerator.svg)](https://pypi.org/project/apiverve-barcodegenerator/)

This is a Python wrapper for the [Barcode Generator API](https://apiverve.com/marketplace/barcodegenerator?utm_source=pypi&utm_medium=referral&utm_content=readme)

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

Before using the Barcode Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_barcodegenerator.apiClient import BarcodegeneratorAPIClient

# Initialize the client with your APIVerve API key
api = BarcodegeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "data": "51001544700",
    "type": "code128",
    "lineColor": "#000000",
    "backgroundColor": "#FFFFFF",
    "displayValue": true
}

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

The Barcode Generator API documentation is found here: [https://docs.apiverve.com/ref/barcodegenerator](https://docs.apiverve.com/ref/barcodegenerator?utm_source=pypi&utm_medium=referral&utm_content=readme).
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
query = {
    "data": "51001544700",
    "type": "code128",
    "lineColor": "#000000",
    "backgroundColor": "#FFFFFF",
    "displayValue": true
}
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
    "imageName": "cc85680f-a1d0-4627-89ff-7d7e53663a2b.png",
    "format": ".png",
    "type": "CODE128",
    "expires": 1766010012598,
    "downloadURL": "https://storage.googleapis.com/apiverve/APIData/barcodegenerator/cc85680f-a1d0-4627-89ff-7d7e53663a2b.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010012&Signature=cV6ANXGGaVDdl5SOFZt3xm2haHBnOklW1zXQICvJlGNlF4kwYVP9i%2F1RAN8NBGxSUiMk4Zcro%2FJUb3W%2Fwy8jA86pyEXTwIjNAiGW94ikpKSXs6%2FiV42Rwv6u2gX%2B2FH7XYyixlwJ%2B%2FHpfGcvka6u01FDk%2F2TUcR7%2FxsZ%2FmXPU2KTrzsI6XttCGBcHhex3LdTv%2F8tzMJbSshbZn%2BGcRTddwv6dC4lCcTtGE6Bl2zqY9s92KIr9X%2F4xj34q4XKBzywgXES57QaVhZeGPPOOUfLtI3pAN8fVSyM%2B9NBMU7R46xyqJ0J8PSVpQZhhAHn03T%2B40rcNp26GXqauM9K%2BLwZRw%3D%3D"
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

query = {
    "data": "51001544700",
    "type": "code128",
    "lineColor": "#000000",
    "backgroundColor": "#FFFFFF",
    "displayValue": true
}

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

query = {
    "data": "51001544700",
    "type": "code128",
    "lineColor": "#000000",
    "backgroundColor": "#FFFFFF",
    "displayValue": true
}

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

query = {
    "data": "51001544700",
    "type": "code128",
    "lineColor": "#000000",
    "backgroundColor": "#FFFFFF",
    "displayValue": true
}

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

query = {
    "data": "51001544700",
    "type": "code128",
    "lineColor": "#000000",
    "backgroundColor": "#FFFFFF",
    "displayValue": true
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_barcodegenerator.apiClient import BarcodegeneratorAPIClient

api = BarcodegeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "data": "51001544700",
    "type": "code128",
    "lineColor": "#000000",
    "backgroundColor": "#FFFFFF",
    "displayValue": true
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
