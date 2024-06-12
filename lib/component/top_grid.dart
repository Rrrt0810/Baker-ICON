import 'package:flutter/material.dart';

class TopGrid extends StatelessWidget {
  final List<String> iconPaths;

  const TopGrid({Key? key, required this.iconPaths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0), // 调整顶部填充
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // 每行4个图标
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
        ),
        itemCount: iconPaths.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFCFD9E0)), // 边框颜色
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0), // 可选：图标周围的填充
              child: Image.asset(iconPaths[index]),
            ),
          );
        },
      ),
    );
  }
}
