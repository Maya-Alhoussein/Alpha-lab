import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lab_app/app/modules/profile_details/user_model_model.dart';

class ProfileDetailsController extends GetxController {
  var isloading = false.obs;
  UserInfo Model = UserInfo();

  @override
  Future<void> onInit() async {
    super.onInit();
    getUserData();
  }

  getUserData() async {
    try {
      isloading(true);
      http.Response response = await http.post(
          Uri.parse('https://mlab123.000webhostapp.com/api/auth/user_info'));
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        Model = UserInfo.fromJson(result);
      }
    } catch (e) {
      print('Error while getting User Data is $e');
    } finally {
      isloading(false);
    }
  }
}
