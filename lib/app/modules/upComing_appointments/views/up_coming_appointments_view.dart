import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../views/views/constants_view.dart';
import '../controllers/up_coming_appointments_controller.dart';

class UpComingAppointmentsView extends GetView<UpComingAppointmentsController> {
  const UpComingAppointmentsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.topLeft,
                  begin: Alignment.bottomRight,
                  colors: [mainColor, Colors.black])),
        ),
        toolbarHeight: 70.h,
        title: Text('Your appointments'),
      ),
    );
  }
}
