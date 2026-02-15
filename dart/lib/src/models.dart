/// Response models for the Barcode Generator API.

/// API Response wrapper.
class BarcodegeneratorResponse {
  final String status;
  final dynamic error;
  final BarcodegeneratorData? data;

  BarcodegeneratorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory BarcodegeneratorResponse.fromJson(Map<String, dynamic> json) => BarcodegeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BarcodegeneratorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Barcode Generator API.

class BarcodegeneratorData {
  String? imageName;
  String? format;
  String? type;
  int? expires;
  String? downloadURL;

  BarcodegeneratorData({
    this.imageName,
    this.format,
    this.type,
    this.expires,
    this.downloadURL,
  });

  factory BarcodegeneratorData.fromJson(Map<String, dynamic> json) => BarcodegeneratorData(
      imageName: json['imageName'],
      format: json['format'],
      type: json['type'],
      expires: json['expires'],
      downloadURL: json['downloadURL'],
    );
}

class BarcodegeneratorRequest {
  String data;
  String type;
  String? lineColor;
  String? backgroundColor;
  bool? displayValue;

  BarcodegeneratorRequest({
    required this.data,
    required this.type,
    this.lineColor,
    this.backgroundColor,
    this.displayValue,
  });

  Map<String, dynamic> toJson() => {
      'data': data,
      'type': type,
      if (lineColor != null) 'lineColor': lineColor,
      if (backgroundColor != null) 'backgroundColor': backgroundColor,
      if (displayValue != null) 'displayValue': displayValue,
    };
}
