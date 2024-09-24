import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lab_app/app/modules/home/top_lab_model.dart';

class HomeController extends GetxController {
  var isloading = false.obs;
  TopLab? Model = TopLab();

  @override
  Future<void> onInit() async {
    super.onInit();
    getTopLabs();
  }

  getTopLabs() async {
    try {
      isloading(true);
      http.Response response = await http.get(Uri.parse(
          'https://mlab123.000webhostapp.com/api/labs/top_rated_labs'));
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        Model = TopLab.fromJson(result);
        Future.delayed(Duration(seconds: 2) ,(){
          isloading(false);
        });
      }

    } catch (e) {
      print('Error while getting Top Labs is $e');
    }
  }
}
