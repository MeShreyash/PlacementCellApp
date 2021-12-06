import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 40,
      ),
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage('assets/images/search_bg.png'),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fast Search',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
          Text(
            'Search Quickly !!!',
            style: TextStyle(
              height: 1.8,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 30),
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Image.network(
                    'assets/icons/search.png',
                    width: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
