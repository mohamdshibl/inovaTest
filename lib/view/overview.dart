import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'customTabs.dart';

class OverView extends StatelessWidget {
  const OverView({Key? key}) : super(key: key);
  final double coverHeight = 260;
  final double profileHeight = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildCoverImage(),
              SizedBox(height: 1.h,),
              Text('The challenge',style: TextStyle(fontSize: 16.sp),),
              SizedBox(height: 1.h,),
              Text('Josh Karmer',style: TextStyle(fontSize: 12.sp),),
              SizedBox(height: 1.h,),
              Text('Start Practicing',style: TextStyle(fontSize: 16.sp),),
              SizedBox(height: 3.h,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF4F4F5),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 5.5.h,
                width: 90.w,
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Color(0xFF6B7280),
                  indicator: BoxDecoration(
                    color: Color(0xFF02337A),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  tabs: [
                    SizedBox(
                      height: 4.h,
                      child: Center(
                        child: Text(
                          'Overview',
                          style: TextStyle(
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                      child: Center(
                        child: Text(
                          'Classes',
                          style: TextStyle(
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                      child: Center(
                        child: Text(
                          'Community',
                          style: TextStyle(
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.h,),
              Expanded(
                flex: 5,
                child: TabBarView(
                  children: [Overview(), classes(), Community()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCoverImage() => Container(
    color: Colors.grey,
    width: double.infinity,
    height: coverHeight,
    child: Image(
      image: AssetImage('assets/images/cover.jpg'),
      fit: BoxFit.cover,
      height: coverHeight,
    ),
  );
}
