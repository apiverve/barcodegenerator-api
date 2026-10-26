/// Response models for the Barcode Generator API.

/// API Response wrapper.
class BarcodegeneratorResponse {
  final String status;
  final dynamic error;
  final BarcodegeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  BarcodegeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory BarcodegeneratorResponse.fromJson(Map<String, dynamic> json) => BarcodegeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BarcodegeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Barcode Generator API.

class BarcodegeneratorData {
  String? imageName;
  String? format;
  String? type;
  num? expires;
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
