import 'package:flutter/material.dart';
import 'package:flutter_demo01/component/top_grid.dart';

import '../component/view_list.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> stickersPath = getPopularStickers();

    return Scaffold(
      backgroundColor: const Color(0xFFEDEAE6),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10), // 容器与页面边缘的间距
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40.0), // 用于将内容稍微向下移动
            const Text(
              'TOP ICONS & STICKERS',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(219, 75, 44, 1),
              ),
            ),
            const SizedBox(height: 20.0), // 顶部文字和下面内容之间的间距
            const Row(
              children: [
                Image(
                  image: AssetImage('assets/common/star.png'),
                  width: 25,
                  height: 25,
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'This top icons and stickers are ALL handpicked by our editors and designers.',
                        style: TextStyle(color: Color(0xFF777676)), // 设置颜色为黑色
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            TopGrid(iconPaths: stickersPath),
          ],
        ),
      ),
    );
  }
}
