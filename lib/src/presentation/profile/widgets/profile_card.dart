import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pexa_car_care_multiscreen_app/src/core/size/kHeight.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 800.h,
        width: 800.w,
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(16.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 100.r,
                  backgroundImage: NetworkImage(
                      'https://cdn-icons-png.freepik.com/256/6997/6997484.png?semt=ais_hybrid '),
                ),
                kHeight10,
                const Text(
                  'John Doe',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                kHeight8,
                const Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                kHeight20,
              ],
            ),
          ),
        ));
  }
}
