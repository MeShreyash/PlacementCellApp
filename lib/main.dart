import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tnp/screens/Add_Company/add_company.dart';
import 'package:tnp/screens/CompanyDetail/jobDetail_Page.dart';
import 'package:tnp/screens/CompanyDetail/job_detail.dart';
import 'package:tnp/screens/drawer/drawer.dart';
import 'package:tnp/screens/home/home.dart';
import 'package:tnp/screens/login/login.dart';
import 'package:tnp/screens/login/registration.dart';
import 'package:tnp/screens/login/user_admin.dart';
import 'package:tnp/screens/login/widgets/notifiers.dart';
import 'package:tnp/screens/search/search_page.dart';
import 'package:tnp/screens/splashscreen/splashscreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<SingleNotifier>(
        create: (_) => SingleNotifier(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'T&P',
      theme: ThemeData(
        primaryColor: Color(0xFF43B1B7),
        accentColor: Color(0xFFFED408),
      ),

      home: AddCompany(),
      //home: SplashScreen(),
    );
  }
}
