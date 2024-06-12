import 'package:flutter/material.dart';

import '../component/icon_grid.dart';
import '../component/image_container.dart';
import '../component/view_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 本地图片数据列表
    final List<List<String>> imageSets = getIconsList();

    final List<String> containerTexts = getIconContainerTexts();

    final List<String> iconPaths = getPopularIcons();

    return Scaffold(
      body: Container(
        color: const Color(0xFFEDEAE6), // 设置整个页面的背景色为#edeae6
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10), // 容器与页面边缘的间距
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // 左对齐
                  children: [
                    SizedBox(height: 40), // 图标和文字之间的间距
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start, // 左对齐
                      children: [
                        Icon(
                          Icons.trending_up_rounded,
                          size: 30,
                          color: Color(0xFF497749), // 设置颜色为#497749
                        ),
                        SizedBox(width: 5), // 图标和文字之间的间距
                        Text(
                          'Trending ICON Packs', // 你的文字内容
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF497749), // 设置文字颜色为#497749
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5), // 两行文字之间的间距
                    Text(
                      'We have found 1000+ icons', // 新的一行文字内容
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF497749), // 设置文字颜色
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 每行2个容器
                  childAspectRatio: 1.3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ImageContainer(
                      imagePaths: imageSets[index % imageSets.length],
                      // 传入不同的图片集
                      containerText: containerTexts[index], // 传入不同的文字
                    );
                  },
                  childCount: imageSets.length, // 总共12个容器
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('assets/iconList/upload.png'),
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Popular Icons',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: IconGrid(iconPaths: iconPaths),
            ),
          ],
        ),
      ),
    );
  }
}
