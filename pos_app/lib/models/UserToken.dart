
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../data/global.dart';

class UserToken {
  String? token;
  String? expiration;


  UserToken.fromJson(Map json)
      : token = json['token'],
        expiration = json['expiration'];

  Map toJson() {
    return {'token': token,
      'expiration': expiration};
  }


  static Future login(String userName, String userPass) async {
    UserToken?  userToken;
    var url = Uri.parse(GlobalUri + 'user/login/');
    final param =jsonEncode({
      "UserName": userName,
      "UserPass": userPass,
    });
    // print(url);
    // print(userName + userPass);
    final response = await http.post(
        url,
        body: param,
        headers: {
          "Accept": "application/json",
          "content-type":"application/json"
        }
    );
    if (response.statusCode == 200) {
      // print("OK!");
      // print(response.body);
      //userToken = response.body;
      userToken =  UserToken.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    }
    // else {
    //   print('Error!' +response.statusCode.toString());
    //   return null;
    // }
    return userToken;
  }

}
