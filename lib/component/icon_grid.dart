import 'package:flutter/material.dart';

class IconGrid extends StatelessWidget {
  final List<String> iconPaths;

  const IconGrid({Key? key, required this.iconPaths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0), // 调整顶部填充
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // 每行4个图标
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
        ),
        itemCount: iconPaths.length,
        itemBuilder: (context, index) {
          return Image.asset(
            iconPaths[index],
          );
        },
      ),
    );
  }
}
