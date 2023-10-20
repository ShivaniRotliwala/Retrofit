import 'package:dart_retrofit/models/AndroidForm.dart';

class ApiResponse<T> {
  bool? status;
  String? message;
  T? data;
  ApiResponse({this.status, this.message, this.data});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse<T>(
        status: json["status"],
        message: json["message"]
        // data: (T).fromJson(json["data"])
    ); // The method 'fromJson' isn't defined for the type 'Type'.
    // Try correcting the name to the name of an existing method, or defining a method named 'fromJson'.
  }

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message
    // "data": data!.toJson(), // The method 'toJson' isn't defined for the type 'Object'.
    // Try correcting the name to the name of an existing method, or defining a method named 'toJson'
  };
}

class Test {
  test() {
    ApiResponse apiResponse = ApiResponse<AndroidForm>();
    var json = apiResponse.toJson();
    var response = ApiResponse<Serializable>.fromJson(json);
  }
}

abstract class Serializable {
  Map<String, dynamic> toJson();
}
