import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // 确保颜色设置正常工作
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/iconList/eco-house.png'),
            width: 24,
            height: 24,
          ),
          label: 'Icons',
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/iconList/sad.png'),
            width: 24,
            height: 24,
          ),
          label: 'Stickers',
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/iconList/wow.png'),
            width: 24,
            height: 24,
          ),
          label: 'Top',
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/iconList/cogwheel.png'),
            width: 24,
            height: 24,
          ),
          label: 'More',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xFF497749),
      unselectedItemColor: const Color(0xFF999999),
      showSelectedLabels: true,
      onTap: onTap,
    );
  }
}
