import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  //keys
  static String userLoginKey = "LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmaiKey = "USEREMAILKEY";

  //save data to sf

  //get data from sf
  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoginKey);
  }
}
