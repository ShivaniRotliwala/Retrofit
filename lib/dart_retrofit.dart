import 'dart:io';
import 'package:xml/xml.dart';

void main() async {
  // Fetch the xml file from src directory
  final file = new File('src/AndroidForm.xml');
  final document = XmlDocument.parse(file.readAsStringSync());
  document.findAllElements("RadioGroup").forEach((element) {
    element.removeAttribute("android:id");
  });
  RegExp exp = RegExp(r'(android):(id)=("@\+)(\w)+(\/)(\w)+(")');

  try {
    var xmlDoc = document.toXmlString(pretty: true, indent: '\t');
    var attribute = exp
        .allMatches(xmlDoc)
        .map((z) => z.group(0))
        .toList();
    List<String> outputAttributes = [];
    for (var attrs in attribute) {
      var splitData = attrs!.split('/').last.replaceAll('"', '');
      outputAttributes.add(splitData);
    }
    print(outputAttributes);
    Map<String, dynamic> json_attr = {};
    for (int i = 0; i < outputAttributes.length; i++) {
      json_attr['"${outputAttributes[i]}"'] = null;
    }
    print(json_attr);
    var createFile = await File('jsons/AndroidForm.json')
        .writeAsString(json_attr.toString());
    print('--------------------------');
    print(createFile);
    print('--------------------------');
  } catch (e) {
    print(e);
  }
}
