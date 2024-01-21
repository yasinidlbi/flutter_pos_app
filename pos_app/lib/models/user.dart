// import 'dart:convert';
// import 'dart:io';
// import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;
// import 'dart:async';
import '../data/global.dart';



class User {
  String? userName;
  String? userPass;

  User.fromJson(Map json)
      : userName = json['userName'],
        userPass = json['userPass'];

  Map toJson() {
    return {'userName': userName,
      'userPass': userPass};
  }



  static Future getUser() {
    var url = Uri.parse(GlobalUri + 'Users/test');
    return http.get(url);
  }
  static Future getUsers() {
    var url = Uri.parse(GlobalUri + 'Users/testList');
    return http.get(url);
  }




}


//
// class User {
//   int? userId;
//   String? UserName;
//   String? Password;
//   String? FirstName;
//   String? LastName;
//   String? Mobile;
//   String? Address;
//   String? Image;
//
//
//
//   User.fromJson(Map json)
//       : userId = json['userId'],
//         UserName = json['UserName'],
//         Password = json['Password'],
//         FirstName = json['FirstName'],
//         LastName = json['LastName'],
//         Mobile = json['Mobile'],
//         Address = json['Address'],
//         Image = json['Image'];
//
//   Map toJson() {
//     return {'userId': userId,
//       'UserName': UserName,
//       'Password': Password,
//       'FirstName': FirstName,
//       'LastName': LastName,
//       'Mobile': Mobile,
//       'Address': Address,
//       'Image': Image};
//   }
//
//
//
//   static Future getUser() {
//     var url = Uri.parse(GlobalUri + 'Users/test');
//     return http.get(url);
//   }
//   static Future getUsers() {
//     var url = Uri.parse(GlobalUri + 'Users/testList');
//     return http.get(url);
//   }
//
// }
//




