import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class LoginInfo {
  String fullName;
  String email;

  LoginInfo({required this.fullName, required this.email});

  Map<String, dynamic> toJson() => {
    'fullName': fullName,
    'email': email,
  };

  factory LoginInfo.fromJson(Map<String, dynamic> json) {
    return LoginInfo(
      fullName: json['fullName'],
      email: json['email'],
    );
  }

  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/user_info.json');
  }

  static Future<LoginInfo?> readLoginInfo() async {
    try {
      final file = await _localFile;
      final contents = await file.readAsString();
      return LoginInfo.fromJson(jsonDecode(contents));
    } catch (e) {
      return null;
    }
  }

  static Future<File> writeLoginInfo(LoginInfo LoginInfo) async {
    final file = await _localFile;
    return file.writeAsString(jsonEncode(LoginInfo.toJson()));
  }
}
