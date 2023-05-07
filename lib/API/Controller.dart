import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:missing_person_project/Account/Login_Page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Controller extends GetxController {
  // ignore: prefer_typing_uninitialized_variables
  var message;

  Future<Map<String, dynamic>> registerData(
    String name,
    String email,
    String password,
  ) async {
    var url = 'https://missing-person.online/public/api/auth/register';

    var response = await http.post(Uri.parse(url), body: {
      'name': name,
      'email': email,
      'password': password,
    });
    var responsebody = jsonDecode(response.body);
    message = responsebody['email']
        .toString()
        .replaceAll('[', '')
        .replaceAll(']', '');
    print(responsebody);
    return responsebody;
  }

  String token = '';

  Future<Map<String, dynamic>> loginData(
    String email,
    String password,
  ) async {
    var url = 'https://missing-person.online/public/api/auth/login';

    var response = await http.post(Uri.parse(url), body: {
      'email': email,
      'password': password,
    });
    var responsebody = jsonDecode(response.body);
    token = responsebody['access_token'].toString();
    print('Token :  $token');
    return responsebody;
  }

  dynamic x, y, data;

  Future<dynamic> addMissingData(
    String childName,
    String country,
    String age,
    String city,
    String parentName,
    String phone,
    String id,
    File imageFile,
  ) async {
    var url = 'https://missing-person.online/public/api/store';
    var request = http.MultipartRequest('POST', Uri.parse(url));
    var image = http.MultipartFile(
      'image',
      imageFile.readAsBytes().asStream(),
      imageFile.lengthSync(),
      filename: 'image.jpg',
    );
    request.fields['name'] = childName;
    request.fields['governorate'] = country;
    request.fields['age'] = age;
    request.fields['city'] = city;
    request.fields['fatherName'] = parentName;
    request.fields['phone'] = phone;
    request.fields['nationalNumber'] = id;
    request.fields['token'] = token;
    request.files.add(image);

    var response = await request.send();
    var responseBody = await response.stream.bytesToString();
    var responseBody2 = jsonDecode(responseBody);
    print('Response: $responseBody2');
  }

  Future<void> logout() async {
    var url = 'https://missing-person.online/public/api/auth/logout';
    var headers = {'Authorization': 'Bearer $token'};
    var response = await http.post(
      Uri.parse(url),
      headers: headers,
    );
    if (response.statusCode == 200) {
      token = ''; // remove the token
      Get.offAll(
        const Login_Page(),
      );
      print('Token :  $token');
    } else {
      print('Error  logout');
    }
  }

  var items = ''.obs;

  void fetchData(token) async {
    final response = await http.get(
      Uri.parse("https://missing-person.online/public/api/missing"),
      headers: {
        "Authorization": "Bearer $token",
      },
    );
    var responsebody = jsonDecode(response.body);

    if (response.statusCode == 200) {
      items.value = response.body;
      print(responsebody);

      return responsebody;
    }
  }

  // var items = ''.obs;

  // Future<void> getDataWithToken(String token) async {
  //   final response = await http.get(
  //     Uri.parse('https://missing-person.online/public/api/missing'),
  //   );
  //   if (response.statusCode == 200) {
  //     print(response.body);
  //     items.value = response.body;
  //   } else {
  //     print('Request failed with status: ${response.statusCode}.');
  //   }
  // }
}
