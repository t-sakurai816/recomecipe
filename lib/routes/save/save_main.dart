import 'package:flutter/material.dart';

import '../../header.dart';

class SaveMain extends StatelessWidget {
  final String screenName = 'Save'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(headerTitle: screenName),
      body: Center(
        child: Text(screenName),
      ),
    );
  }
}