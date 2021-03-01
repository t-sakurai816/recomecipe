import 'package:flutter/material.dart';

import '../../header/header_main.dart';

class HomeMain extends StatelessWidget {
  final String bodyName = 'Home'; //headerに表示される名前

  final Map _movieData = {
    'Icon':
        'https://pbs.twimg.com/profile_images/1356263946638950410/s72cF6s2.jpg',
    'Title': '初めての動画投稿',
    'Thumbnail':
        'https://s1.1zoom.me/b5050/596/Evening_Forests_Mountains_Firewatch_Campo_Santo_549147_1920x1080.jpg',
    'Name': 'Takumi Sakurai',
    'Views': '2.3万回',
    'timestamp': '2時間前'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderMain(),
      body: ListView.builder(
        // 10回リストを表示する
        itemBuilder: (BuildContext context, int index) {
          return PostMovieList(movieData: _movieData);
        },
        itemCount: 10,
      ),
    );
  }
}

class PostMovieList extends StatelessWidget {
  const PostMovieList({
    Key key,
    @required Map movieData,
  })  : _movieData = movieData,
        super(key: key);

  final Map _movieData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 16:9のサムネを表示
        Image.network(_movieData['Thumbnail']),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              children: [
                Container(
                  height: 50,
                  child: ClipRRect(
                    // アイコンを丸くする
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(_movieData['Icon']),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // 左寄せ
                    children: [
                      Text(
                        _movieData['Title'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                        softWrap: true,
                      ),
                      Row(
                        children: [
                          Text(_movieData['Name']),
                          Text('・' + _movieData['Views']),
                          Text('・' + _movieData['timestamp']),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
