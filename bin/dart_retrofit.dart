import 'package:dart_retrofit/api/api_client.dart';
import 'package:dart_retrofit/models/AndroidForm.dart';
import 'package:dart_retrofit/res/APIResponse.dart';
import 'package:dio/dio.dart';

Future<void> main(List<String> arguments) async {
  final client = RestClient(Dio(BaseOptions(contentType: "application/json")));
  var data = await client.getAndroidForm();
  print(data);
  ApiResponse apiResponse = ApiResponse<AndroidForm>();
  var json = apiResponse.toJson();
  print(json);
}
