import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
         Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 80.sp),),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
          child: const Text('Profile'),
        ),
      ]),
    )));
  }
}
