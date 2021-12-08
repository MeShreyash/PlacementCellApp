import 'package:flutter/material.dart';
import 'package:tnp/screens/FAQ/faq.dart';
import 'package:tnp/screens/PastData/PastData.dart';
import 'package:tnp/screens/Resumes/resume.dart';
import 'package:tnp/screens/search/search_page.dart';
import 'package:tnp/widgets/themes.dart';

class FourButton extends StatelessWidget {
  const FourButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //Button 1
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: EdgeInsets.all(13),
                      fixedSize: const Size(145, 150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      primary: MyThemes.blueColor, // <-- Button color
                      onPrimary: Colors.white, // <-- Splash color
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 50,
                                child:
                                    Image.asset('assets/images/company.png')),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              //  heightFactor: 1.7,
                              child: Text(
                                '\nUpcoming \nCompanies',
                                style: TextStyle(
                                  fontSize: 19.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(width: 20),

              //Button 2
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ResumePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: EdgeInsets.all(13),
                      fixedSize: const Size(145, 150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      primary: MyThemes.yellowColor, // <-- Button color
                      onPrimary: Colors.white, // <-- Splash color
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Image.asset('assets/images/resume.png')),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              //  heightFactor: 1.7,
                              child: Text(
                                '\n \nResumes',
                                style: TextStyle(
                                  fontSize: 19.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          //
          SizedBox(height: 20),

          Row(
            children: [
              //Button 3
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PastData_Page()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: EdgeInsets.all(13),
                      fixedSize: const Size(145, 150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      primary: MyThemes.orangeColor, // <-- Button color
                      onPrimary: Colors.white, // <-- Splash color
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Image.asset('assets/images/data.png')),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              //  heightFactor: 1.7,
                              child: Text(
                                '\n \nPast Data',
                                style: TextStyle(
                                  fontSize: 19.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(width: 20),

              //Button 4
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FAQ_Page()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: EdgeInsets.all(13),
                      fixedSize: const Size(145, 150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      primary: MyThemes.greenColor, // <-- Button color
                      onPrimary: Colors.white, // <-- Splash color
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Image.asset('assets/images/faq.png')),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              //  heightFactor: 1.7,
                              child: Text(
                                '\n \nFAQs',
                                style: TextStyle(
                                  fontSize: 19.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
