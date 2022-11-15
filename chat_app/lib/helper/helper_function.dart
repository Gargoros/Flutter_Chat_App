import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  //keys
  static String userLoginKey = "LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmaiKey = "USEREMAILKEY";

  //save data to sf
  static Future<bool> saveUserLoggedInStatus(bool isUserLoggedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(userLoginKey, isUserLoggedIn);
  }

  static Future<bool> saveUserNameSF(String userName) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userNameKey, userName);
  }

  static Future<bool> saveUserEmailSF(String userEmail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmaiKey, userEmail);
  }

  //get data from sf
  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoginKey);
  }
}
