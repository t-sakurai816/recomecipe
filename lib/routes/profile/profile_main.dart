import 'package:flutter/material.dart';

import '../../header/header_share.dart';

class ProfileMain extends StatelessWidget {
  final String screenName = 'Profile'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderShare(headerTitle: screenName),
      body: Center(
        child: Text(screenName),
      ),
    );
  }
}
