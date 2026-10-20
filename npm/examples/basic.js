/**
 * Basic Example - Barcode Generator API
 *
 * This example demonstrates how to use the Barcode Generator API.
 * Make sure to set your API key in the .env file or replace '[YOUR_API_KEY]' below.
 */

require('dotenv').config();
const barcodegeneratorAPI = require('../index.js');

// Initialize the API client
const api = new barcodegeneratorAPI({
    api_key: process.env.API_KEY || '[YOUR_API_KEY]'
});

// Example query
var query = {
  "data": "51001544700",
  "type": "code128",
  "lineColor": "#000000",
  "backgroundColor": "#FFFFFF",
  "displayValue": true
};

// Make the API request using callback
console.log('Making request to Barcode Generator API...\n');

api.execute(query, function (error, data) {
    if (error) {
        console.error('Error occurred:');
        if (error.error) {
            console.error('Message:', error.error);
            console.error('Status:', error.status);
        } else {
            console.error(JSON.stringify(error, null, 2));
        }
        return;
    }

    console.log('Response:');
    console.log(JSON.stringify(data, null, 2));
});
