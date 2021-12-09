import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tnp/screens/Add_Company/add_company.dart';
import 'package:tnp/screens/CompanyDetail/jobDetail_Page.dart';
import 'package:tnp/screens/CompanyDetail/job_detail.dart';
import 'package:tnp/screens/PastData/PastData.dart';
import 'package:tnp/screens/Profile/profile.dart';
import 'package:tnp/screens/UserCompanyList/user_search_page.dart';
import 'package:tnp/screens/drawer/drawer.dart';
import 'package:tnp/screens/home/home.dart';
import 'package:tnp/screens/login/login.dart';
import 'package:tnp/screens/login/registration.dart';
import 'package:tnp/screens/login/user_admin.dart';
import 'package:tnp/screens/login/widgets/notifiers.dart';
import 'package:tnp/screens/search/search_page.dart';
import 'package:tnp/screens/splashscreen/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
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

      home: SplashScreen(),
      //  home: JobDetail_Page(),
    );
  }
}
