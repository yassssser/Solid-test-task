import 'package:flutter/material.dart';
import 'package:test_task/pages/animated_container_page.dart';
import 'package:test_task/pages/animated_opacity_page.dart';
import 'package:test_task/pages/home_page.dart';
import 'package:test_task/pages/tween_animation_builder_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;

  final pages = const [
    HomePage(),
    AnimatedContainerPage(),
    AnimatedOpacityPage(),
    TweenAnimationBuilderPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        unselectedItemColor: Colors.black,
        elevation: 5,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Task',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shape_line),
            label: 'Container',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Opacity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens),
            label: 'Tween',
          ),
        ],
      ),
      body: pages[_selectedIndex],
    );
  }
}
