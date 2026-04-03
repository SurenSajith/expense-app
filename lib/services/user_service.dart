import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserServices {
  static Future<void> storeUserDetails({
    required String userName,
    required String email,
    required String password,
    required String confirmPassword,
    required BuildContext context,
  }) async {
    try {
      if (password != confirmPassword) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Password and confirm password do not match")),
        );
        return;
      }

      SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setString("username", userName);
      await prefs.setString("email", email);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("User Details stored successfully")),
      );
    } catch (err) {
      err.toString();
    }
  }
}
