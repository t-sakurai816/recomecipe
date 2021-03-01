import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String screenName = 'ホーム'; //中身に表示される名前
  @override
  Widget build(BuildContext context) {
    //端末のサイズを取得
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;

    final Map _userData = {
      'Icon':
          'https://pbs.twimg.com/profile_images/1356263946638950410/s72cF6s2.jpg',
      'Name': 'Takumi Sakurai',
      'channelCount': 'チャンネル登録者数',
      'channelCountNum': '10.34万人',
    };

    return Scaffold(
      body: Column(
        children: [
          // ヘッダー画像を配置
          Placeholder(
            fallbackHeight: 40,
            color: Colors.red,
          ),
          // ユーザー情報
          Container(
            child: Row(
              children: [
                Container(
                  width: deviceWidth * 0.25,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100), // アイコンを丸くする
                      child: Image.network(
                        _userData['Icon'],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // 左寄せ
                    children: [
                      Text(_userData['channelCount']),
                      Text(_userData['channelCountNum']),
                      TextButton(
                        child: Text('チャンネル登録'),
                        style: TextButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          print('チャンネル登録ボタンを押した');
                          // 押したらチャンネル登録する処理を書く
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
