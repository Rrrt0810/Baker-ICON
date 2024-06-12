import 'package:flutter/material.dart';
import 'package:flutter_demo01/child_page/icons_page.dart';
import 'package:flutter_demo01/child_page/more_page.dart';
import 'package:flutter_demo01/child_page/stickers_page.dart';
import 'package:flutter_demo01/child_page/top_page.dart';

import 'component/bottom_nav_bar.dart'; // 导入 BottomNavBar 组件

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HelloWorldPage(),
    );
  }
}

class HelloWorldPage extends StatefulWidget {
  const HelloWorldPage({Key? key}) : super(key: key);

  @override
  _HelloWorldPageState createState() => _HelloWorldPageState();
}

class _HelloWorldPageState extends State<HelloWorldPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const StickersPage(),
    const TopPage(),
    const MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEAE6), // 设置背景颜色
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

void main() {
  runApp(const MainPage());
}
