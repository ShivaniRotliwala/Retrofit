import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/AndroidForm.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://gorest.co.in/public-api/users")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/androidForm")
  Future<List<AndroidForm>> getAndroidForm();

  @GET(
      "/androidForm/{txtEmail}/{txtDate}/{txtNumber}/{radioButton}/{radioButton2}/{radioButton3}/{spinner}/{datePicker}/{chk1}/{chk2}/{chk3}")
  Future<AndroidForm> getAndroidFormFromId(
      @Path("txtEmail") String txtEmail,
      @Path("txtDate") String txtDate,
      @Path("txtNumber") String txtNumber,
      @Path("radioButton") String radioButton,
      @Path("radioButton2") String radioButton2,
      @Path("radioButton3") String radioButton3,
      @Path("spinner") String spinner,
      @Path("datePicker") String datePicker,
      @Path("chk1") String chk1,
      @Path("chk2") String chk2,
      @Path("chk3") String chk3);

  @POST("/androidForm/createPost")
  Future<AndroidForm> createAndroidForm(@Body() AndroidForm androidForm);

  @PUT(
      "/androidForm/{txtEmail}/{txtDate}/{txtNumber}/{radioButton}/{radioButton2}/{radioButton3}/{spinner}/{datePicker}/{chk1}/{chk2}/{chk3}")
  Future<AndroidForm> updateAndroidForm(
      @Path("txtEmail") String txtEmail,
      @Path("txtDate") String txtDate,
      @Path("txtNumber") String txtNumber,
      @Path("radioButton") String radioButton,
      @Path("radioButton2") String radioButton2,
      @Path("radioButton3") String radioButton3,
      @Path("spinner") String spinner,
      @Path("datePicker") String datePicker,
      @Path("chk1") String chk1,
      @Path("chk2") String chk2,
      @Path("chk3") String chk3);

  @DELETE("/androidForm/{txtEmail}")
  Future<AndroidForm> deleteAndroidForm(@Path("txtEmail") String txtEmail);
}
