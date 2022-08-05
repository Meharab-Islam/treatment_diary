import 'package:design/controller/controlls.dart';
import 'package:design/screens/allcapture.dart';
import 'package:design/screens/homePage.dart';
import 'package:design/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ScreenChange()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List screen = [
      HomePage(),
      AllCapture(),
      Text(
        'See next page !!',
      ),
      ProfilePage(),
    ];

    var provide = Provider.of<ScreenChange>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Times"),
      home: ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: ((context, child) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                title: Image.asset(
                  'assets/logo.png',
                  width: 130.w,
                  height: 70.w,
                  fit: BoxFit.contain,
                ),
                actions: [
                  Center(
                    child: Stack(
                      children: [
                        const Icon(
                          Icons.notifications_outlined,
                          color: Colors.black,
                        ),
                        Positioned(
                          left: 15,
                          top: 5,
                          child: Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                ],
              ),
              
              body: Center(
                child: screen[provide.count],
              ),

              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.apps_outlined),
                    label: 'Lessons',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.mail_outline),
                    label: 'Message',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline),
                    label: 'Profile',
                  ),
                ],
                currentIndex: provide.count,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.black,
                onTap: provide.increment,
              ),
            )),
      ),
    );
  }
}
