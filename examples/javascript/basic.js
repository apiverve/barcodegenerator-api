/**
 * Barcode Generator API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the Barcode Generator API.
 * API Documentation: https://docs.apiverve.com/ref/barcodegenerator
 */

const API_KEY = process.env.APIVERVE_API_KEY || 'YOUR_API_KEY_HERE';
const API_URL = 'https://api.apiverve.com/v1/barcodegenerator';

/**
 * Make a POST request to the Barcode Generator API
 */
async function callBarcodeGeneratorAPI() {
  try {
    // Request body
    const requestBody &#x3D; {
    &quot;data&quot;: &quot;51001544700&quot;,
    &quot;type&quot;: &quot;code128&quot;,
    &quot;lineColor&quot;: &quot;#000000&quot;,
    &quot;backgroundColor&quot;: &quot;#FFFFFF&quot;,
    &quot;displayValue&quot;: true
};

    const response = await fetch(API_URL, {
      method: 'POST',
      headers: {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(requestBody)
    });

    // Check if response is successful
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();

    // Check API response status
    if (data.status === 'ok') {
      console.log('✓ Success!');
      console.log('Response data:', data.data);
      return data.data;
    } else {
      console.error('✗ API Error:', data.error || 'Unknown error');
      return null;
    }

  } catch (error) {
    console.error('✗ Request failed:', error.message);
    return null;
  }
}

// Run the example
callBarcodeGeneratorAPI()
  .then(result => {
    if (result) {
      console.log('\n📊 Final Result:');
      console.log(JSON.stringify(result, null, 2));
    }
  });
