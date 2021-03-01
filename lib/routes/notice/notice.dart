import 'package:flutter/material.dart';

import '../../header/header_none.dart';

class NoticeMain extends StatelessWidget {
  final String screenName = 'Notice'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNone(headerTitle: screenName),
      body: Center(
        child: Text(screenName),
      ),
    );
  }
}
