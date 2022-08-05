import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12.w),
        child: Center(
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              height: 40.w,
              child: Center(
                  child: Text(
                "Profile",
                style: TextStyle(fontSize: 19.sp),
              )),
            ),
            SizedBox(
              height: 25.h,
            ),
            CircleAvatar(
              radius: 37.r,
              backgroundColor: Colors.teal,
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/soykot.jpg'),
                radius: 35.r,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            const Text("Soykot Hossen"),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 20.w, right: 50.w),
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5.r)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Mobile Number: 01784286885"),
                    Text("Email Address: soykot@gmail.com"),
                    Text("Designation: Student"),
                    Text("Date of Birth: 13 August 1997"),
                    Text(
                      "BMDC Registration Number",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Permanent: BMDC 345"),
                  ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            MaterialButton(
              onPressed: () {},
              color: Color(0xFFFDCF0B),
              minWidth: double.infinity,
              height: 50.h,
              child: Center(child: const Text("Edit Profile")),
            )
          ]),
        ),
      ),
    );
  }
}
