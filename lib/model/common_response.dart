import 'package:qcoom_shopping/model/meta_info.dart';

class CommonResponse<T> {
  CommonResponse({
    required this.success,
    required this.message,
    required this.metaInfo,
    required this.data,
  });

  bool success;
  String message;
  MetaInfo metaInfo;
  T data;

  factory CommonResponse.fromJson(Map<String, dynamic> json) => CommonResponse<T>(
    success: json["success"],
    message: json["message"],
    metaInfo: MetaInfo.fromJson(json["meta_info"]),
    data: json["data"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "meta_info": metaInfo.toJson(),
    // "data": dynamic[data].from(data.map((x) => x.toJson())),
  };
}