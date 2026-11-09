using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.BarcodeGenerator
{
    /// <summary>
    /// Query options for the Barcode Generator API
    /// </summary>
    public class BarcodeGeneratorQueryOptions
    {
        /// <summary>
        /// The data you want to generate a barcode from (string)
        /// </summary>
        [JsonProperty("data")]
        public string Data { get; set; }

        /// <summary>
        /// The type of barcode you want to generate
        /// </summary>
        [JsonProperty("type")]
        public string Type { get; set; }

        /// <summary>
        /// The color of the barcode (default: #000000)
        /// </summary>
        [JsonProperty("lineColor")]
        public string LineColor { get; set; }

        /// <summary>
        /// The background color of the barcode (default: #ffffff)
        /// </summary>
        [JsonProperty("backgroundColor")]
        public string BackgroundColor { get; set; }

        /// <summary>
        /// Whether to display the value below the barcode (default: true)
        /// </summary>
        [JsonProperty("displayValue")]
        public bool? DisplayValue { get; set; }

        /// <summary>
        /// Width of the narrowest bar in pixels (default: 4)
        /// </summary>
        [JsonProperty("barWidth")]
        public int? BarWidth { get; set; }

        /// <summary>
        /// Height of the bars in pixels (default: 40)
        /// </summary>
        [JsonProperty("height")]
        public int? Height { get; set; }

        /// <summary>
        /// Quiet-zone margin around the barcode in pixels (default: 10)
        /// </summary>
        [JsonProperty("margin")]
        public int? Margin { get; set; }

        /// <summary>
        /// Font size of the text label in pixels (default: 20)
        /// </summary>
        [JsonProperty("fontSize")]
        public int? FontSize { get; set; }

        /// <summary>
        /// Space between the bars and the text label in pixels (default: 2)
        /// </summary>
        [JsonProperty("textMargin")]
        public int? TextMargin { get; set; }
    }
}
