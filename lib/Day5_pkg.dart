import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Day5Pkg extends StatefulWidget {
  const Day5Pkg({super.key});

  @override
  State<Day5Pkg> createState() => _Day5PkgState();
}

class _Day5PkgState extends State<Day5Pkg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: Text(
          "flutter_screenutil pkg",
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 150.h,
          width: 150.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(10.r)),
            color: Theme.of(context).colorScheme.primary,
          ),
          margin: EdgeInsets.all(10.h),
          padding: EdgeInsets.all(10.w),
          child: Text(
            "Haider Ali",
            style: TextStyle(
              fontSize: 20.sp,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
