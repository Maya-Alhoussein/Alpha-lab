import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:lab_app/app/modules/appointments/views/appointments_view.dart';
import 'package:lab_app/app/modules/login/views/login_view.dart';
import 'package:lab_app/app/modules/profile_details/views/profile_details_view.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.topLeft,
              begin: Alignment.bottomRight,
              colors: [Color(0xFF0087BB), Colors.black]),
        ),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Center(
                      child: Image.asset('assets/images/profile.png',scale: 5,color: Colors.white,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50).r,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                        SizedBox(width: 85.w),
                        Text(
                          'Profile',
                          style: TextStyle(color: Colors.white,fontSize: 25.sp,letterSpacing: 1),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  ListTile(
                    onTap: (){Get.to(ProfileDetailsView());},
                    leading: Icon(Icons.person_rounded),
                    title: Text('My profile'),

                  ),
                  Divider(color: Colors.white,),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.medical_information_outlined),
                    title: Text('Medical Records'),

                  ),
                  Divider(color: Colors.white,),
                  ListTile(
                    onTap: (){Get.to(AppointmentsView());},
                    leading: Icon(Icons.edit_calendar),
                    title: Text('My Appointments'),

                  ),
                  Divider(color: Colors.white,),
                  ListTile(
                    onTap: (){Get.to(() => LoginView());},
                    leading: Icon(Icons.logout),
                    title: Text('Log out'),

                  )
                ],
              )
            ],
          )),
    );
  }
}
