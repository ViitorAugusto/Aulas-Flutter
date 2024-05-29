import 'package:flutter/material.dart';
import 'package:primeiro_app/helper/paletas.dart';
import 'package:primeiro_app/pages/bottom_bar_navigate/home_page.dart';
import 'package:primeiro_app/pages/bottom_bar_navigate/home_page2.dart';
import 'package:primeiro_app/pages/bottom_bar_navigate/home_page3.dart';
import 'package:primeiro_app/pages/bottom_bar_navigate/home_page4.dart';
import 'package:primeiro_app/pages/cidades/cidades_page.dart';

class BottomBarNavigatorPage extends StatefulWidget {
  const BottomBarNavigatorPage({super.key});

  @override
  State<BottomBarNavigatorPage> createState() => _BottomBarNavigatorPageState();
}

class _BottomBarNavigatorPageState extends State<BottomBarNavigatorPage> {
  int _indice = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,

        backgroundColor: Colors.blueAccent,
        currentIndex: _indice,
        onTap: (index) {
          setState(() {
            _indice = index;
          });
          _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch),
            label: 'Launch',
          ),
        ],
        selectedIconTheme: const IconThemeData(color: Paletas.primaria),
        selectedItemColor: Paletas.primaria,
        unselectedItemColor: Colors.grey,
      ),
      
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _indice = index;
          });
        },
        children: const <Widget>[
          HomePage1(),
          HomePage2(),
          HomePage3(),
          HomePage4(),
          CidadePage(),
        ],
      ),
    );
  }
}
