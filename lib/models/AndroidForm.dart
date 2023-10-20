import 'package:json_annotation/json_annotation.dart';

part 'AndroidForm.g.dart';

@JsonSerializable()
class AndroidForm {
  AndroidForm({this.txtEmail, this.txtDate, this.txtNumber, this.radioButton, this.radioButton2, this.radioButton3, this.spinner, this.datePicker, this.chk1, this.chk2, this.chk3});

  String? txtEmail;
  String? txtDate;
  String? txtNumber;
  String? radioButton;
  String? radioButton2;
  String? radioButton3;
  String? spinner;
  String? datePicker;
  String? chk1;
  String? chk2;
  String? chk3;
  
  factory AndroidForm.fromJson(Map<String,dynamic> json) => _$AndroidFormFromJson(json);
  Map<String, dynamic> toJson() => _$AndroidFormToJson(this);
}
