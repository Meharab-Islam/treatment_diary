import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        'image': 'assets/images.jpg',
        'title': 'Neonatology',
      },
      {
        'image': 'assets/images2.png',
        'title': 'Dermatology',
      },
      {
        'image': 'assets/images.jpg',
        'title': 'Neonatology',
      },
      {
        'image': 'assets/images2.png',
        'title': 'Dermatology',
      },
      {
        'image': 'assets/images.jpg',
        'title': 'Neonatology',
      },
      {
        'image': 'assets/images2.png',
        'title': 'Dermatology',
      },
      {
        'image': 'assets/images.jpg',
        'title': 'Neonatology',
      },
      {
        'image': 'assets/images2.png',
        'title': 'Dermatology',
      },
      {
        'image': 'assets/images.jpg',
        'title': 'Neonatology',
      },
      {
        'image': 'assets/images2.png',
        'title': 'Dermatology',
      },
    ];

    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: ((context, child) => Container(
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              children: [
                SizedBox(
                  height: 20.w,
                ),
                Center(
                  child: SizedBox(
                    height: 35.w,
                    child: TextFormField(
                      style: TextStyle(fontSize: 15.sp),
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 2),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 22.sp,
                          ),
                          hintText: "Search",
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          fillColor: const Color(0xffF3EFF7),
                          filled: true),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: SizedBox(
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: ((context, index) => Card(
                            elevation: 5,
                            margin: EdgeInsets.symmetric(vertical: 10.w),
                            child: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Column(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.r),
                                  child: Image.asset(
                                    data[index]['image'],
                                    height: 150.w,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 7.w,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      data[index]['title'],
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                      ),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: const Color(
                                              0xff291439), // Background color
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "View Lesson",
                                          style: TextStyle(fontSize: 13.sp),
                                        ))
                                  ],
                                )
                              ]),
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
