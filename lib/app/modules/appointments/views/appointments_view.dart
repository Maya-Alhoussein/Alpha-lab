import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:lab_app/app/modules/past_appointments_details/views/past_appointments_details_view.dart';
import 'package:lab_app/app/modules/upComing_appointments_details/views/up_coming_appointments_details_view.dart';
import 'package:lab_app/app/views/views/constants_view.dart';

import '../controllers/appointments_controller.dart';

class AppointmentsView extends GetView<AppointmentsController> {
  const AppointmentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          bottom: TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            labelColor: Colors.white,
            tabs: <Widget>[
              Tab(
                text: "Up coming",
              ),
              Tab(
                text: "past",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [UpComingAppointmentsCards(), PastAppointmentsCards()],
        ),
      ),
    );
  }
}

ListView UpComingAppointmentsCards() {
  return ListView.builder(
      itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(10).r,
            child: GestureDetector(
              onTap: () {
                Get.to(() => UpComingAppointmentsDetailsView());
              },
              child: Card(
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)),
                color: Colors.grey[300],
                child: Container(
                  height: 130.h,
                  child: Padding(
                    padding: const EdgeInsets.all(10).r,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(

                          backgroundImage:
                              AssetImage('assets/images/lablab.png'),
                          radius: 45,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20).r,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('labortary Name',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp)),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Text('Time : '),
                                  Text('12:00 PM'),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Text('Date : '),
                                  Text('5/5/2023'),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ));
}

ListView PastAppointmentsCards() {
  return ListView.builder(
      itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(10).r,
            child: GestureDetector(
              onTap: (){Get.to(() =>PastAppointmentsDetailsView());},
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.grey[300],
                child: Container(
                  height: 130.h,
                  child: Padding(
                    padding: const EdgeInsets.all(10).r,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/lablab.png'),
                          radius: 45,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20).r,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('labortary Name',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp)),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Text('Time : '),
                                  Text('12:00 PM'),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Text('Date : '),
                                  Text('5/5/2023'),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ));
}
