# Barcode Generator API - Go Client

Barcode Generator is a simple tool for generating barcodes from data. It returns a URL to the generated image of the barcode.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Go client for the [Barcode Generator API](https://apiverve.com/marketplace/barcodegenerator?utm_source=go&utm_medium=readme)

---

## Installation

```bash
go get github.com/apiverve/barcodegenerator-api/go
```

---

## Configuration

Before using the Barcode Generator API client, you need to obtain your API key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=go&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=go&utm_medium=readme)

The Barcode Generator API documentation is found here: [https://docs.apiverve.com/ref/barcodegenerator](https://docs.apiverve.com/ref/barcodegenerator?utm_source=go&utm_medium=readme)

---

## Usage

```go
package main

import (
    "fmt"
    "log"

    "github.com/apiverve/barcodegenerator-api/go"
)

func main() {
    // Create a new client
    client := barcodegenerator.NewClient("YOUR_API_KEY")

    // Set up parameters
    params := map[string]interface{}{
        "data": "51001544700",
        "type": "code128",
        "lineColor": "#000000",
        "backgroundColor": "#FFFFFF",
        "displayValue": true
    }

    // Make the request
    response, err := client.Execute(params)
    if err != nil {
        log.Fatal(err)
    }

    fmt.Printf("Status: %s\n", response.Status)
    fmt.Printf("Data: %+v\n", response.Data)
}
```

---

## Example Response

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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=go&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=go&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=go&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=go&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
