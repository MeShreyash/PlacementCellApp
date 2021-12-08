import 'package:flutter/material.dart';
import 'package:tnp/screens/search/widgets/search_app_bar.dart';
import 'package:tnp/screens/search/widgets/search_input.dart';
import 'package:tnp/screens/search/widgets/search_list.dart';
import 'package:tnp/screens/search/widgets/search_option.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.grey.withOpacity(0.1),
                    ))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchAppBar(),
                SearchInput(),
                //SearchOption(),
                Expanded(child: SearchList()),
              ],
            )
          ],
        ));
  }
}
