import 'package:flutter/material.dart';
import 'package:segundo_app/pages/home/home_fleeky.dart';

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
        selectedIconTheme: const IconThemeData(color: Color(0xFFFC2D65)),
        selectedItemColor: const Color(0xFFFC2D65),
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
          HomeFleeky(),
          PlaceholderWidget('Business'),
          PlaceholderWidget('School'),
          PlaceholderWidget('Settings'),
          PlaceholderWidget('Launch'),
        ],
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final String title;

  const PlaceholderWidget(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
