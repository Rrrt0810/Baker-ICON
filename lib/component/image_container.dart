import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final List<String> imagePaths;
  final String containerText;
  final double imageSize;

  const ImageContainer({
    super.key,
    required this.imagePaths,
    required this.containerText,
    this.imageSize = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: const Color(0xFFDED7D7),
          width: 1.0,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0), // 调整顶部填充
            child: GridView.builder(
              itemCount: imagePaths.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 每行3个图片
                mainAxisSpacing: 10.0, // 调整主轴方向（行）上的间距
                crossAxisSpacing: 20.0, // 调整交叉轴方向（列）上的间距,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Image.asset(
                  imagePaths[index],
                  width: imageSize,
                  height: imageSize,
                );
              },
            ),
          ),
          Positioned(
            bottom: 5.0,
            left: 10.0,
            child: Text(
              containerText,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
