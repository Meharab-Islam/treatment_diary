import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AllCapture extends StatelessWidget {
  const AllCapture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List content = [
      {
        "image": "assets/images.jpg",
        "title": "Term of Dermatology",
      },
      {
        "image": "assets/logo.png",
        "title": "Pompholyx",
      },
      {
        "image": "assets/images2.png",
        "title": "Scabies",
      },
      {
        "image": "assets/images.jpg",
        "title": "Term of Dermatology",
      },
      {
        "image": "assets/logo.png",
        "title": "Pompholyx",
      },
      {
        "image": "assets/images2.png",
        "title": "Scabies",
      },
      {
        "image": "assets/images.jpg",
        "title": "Term of Dermatology",
      },
      {
        "image": "assets/logo.png",
        "title": "Pompholyx",
      },
      {
        "image": "assets/images2.png",
        "title": "Scabies",
      },
      {
        "image": "assets/images.jpg",
        "title": "Term of Dermatology",
      },
      {
        "image": "assets/logo.png",
        "title": "Pompholyx",
      },
      {
        "image": "assets/images2.png",
        "title": "Scabies",
      },
      {
        "image": "assets/images.jpg",
        "title": "Term of Dermatology",
      },
      {
        "image": "assets/logo.png",
        "title": "Pompholyx",
      },
      {
        "image": "assets/images2.png",
        "title": "Scabies",
      },
      {
        "image": "assets/images.jpg",
        "title": "Term of Dermatology",
      },
      {
        "image": "assets/logo.png",
        "title": "Pompholyx",
      },
      {
        "image": "assets/images2.png",
        "title": "Scabies",
      },
      {
        "image": "assets/images.jpg",
        "title": "Term of Dermatology",
      },
      {
        "image": "assets/logo.png",
        "title": "Pompholyx",
      },
      {
        "image": "assets/images2.png",
        "title": "Scabies",
      },
      {
        "image": "assets/images.jpg",
        "title": "Term of Dermatology",
      },
      {
        "image": "assets/logo.png",
        "title": "Pompholyx",
      },
      {
        "image": "assets/images2.png",
        "title": "Scabies",
      },
      {
        "image": "assets/images.jpg",
        "title": "Term of Dermatology",
      },
      {
        "image": "assets/logo.png",
        "title": "Pompholyx",
      },
      {
        "image": "assets/images2.png",
        "title": "Scabies",
      },
    ];

    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (context, child) => Container(
              margin: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.w,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      height: 40.w,
                      child: Center(
                          child: Text(
                        "Dermatology",
                        style: TextStyle(fontSize: 19.sp),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Expanded(
                    child: SizedBox(
                      child: ListView.builder(
                        itemCount: content.length,
                        itemBuilder: (context, index) => ListTile(
                          leading: Image.asset(
                            content[index]['image'],
                            width: 80.w,
                            height: 40.w,
                            fit: BoxFit.fill,
                          ),
                          title: Text(
                            content[index]['title'],
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
