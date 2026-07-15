# Barcode Generator API

Barcode Generator is a simple tool for generating barcodes from data. It returns a URL to the generated image of the barcode.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)
[![npm version](https://img.shields.io/npm/v/@apiverve/barcodegenerator.svg)](https://www.npmjs.com/package/@apiverve/barcodegenerator)

This is a Javascript Wrapper for the [Barcode Generator API](https://apiverve.com/marketplace/barcodegenerator?utm_source=npm&utm_medium=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/barcodegenerator
```

Using yarn:
```shell
yarn add @apiverve/barcodegenerator
```

---

## Configuration

Before using the Barcode Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=readme)

The Barcode Generator API documentation is found here: [https://docs.apiverve.com/ref/barcodegenerator](https://docs.apiverve.com/ref/barcodegenerator?utm_source=npm&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const barcodegeneratorAPI = require('@apiverve/barcodegenerator');
const api = new barcodegeneratorAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  "data": "51001544700",
  "type": "code128",
  "lineColor": "#000000",
  "backgroundColor": "#FFFFFF",
  "displayValue": true
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  "data": "51001544700",
  "type": "code128",
  "lineColor": "#000000",
  "backgroundColor": "#FFFFFF",
  "displayValue": true
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  "data": "51001544700",
  "type": "code128",
  "lineColor": "#000000",
  "backgroundColor": "#FFFFFF",
  "displayValue": true
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=npm&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
