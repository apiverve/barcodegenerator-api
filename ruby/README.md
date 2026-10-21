# Barcode Generator API - Ruby Gem

Barcode Generator creates downloadable barcode images from text or product codes in Code 128 or Code 39 formats. Each response provides a temporary image download link, file format, and expiration timestamp.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_barcodegenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_barcodegenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_barcodegenerator'

# Initialize the client
client = APIVerve::Barcodegenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  data: "51001544700",
  type: "code128",
  lineColor: "#000000",
  backgroundColor: "#FFFFFF",
  displayValue: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ data: "51001544700", type: "code128", lineColor: "#000000", backgroundColor: "#FFFFFF", displayValue: true })
  puts response["data"]
rescue APIVerve::Barcodegenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Barcodegenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Barcodegenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/barcodegenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/barcodegenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/barcodegenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
