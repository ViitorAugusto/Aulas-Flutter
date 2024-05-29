import 'package:count_bloc/sarina/sarina_banner.dart';
import 'package:count_bloc/sarina/sarina_box_status.dart';
import 'package:count_bloc/sarina/sarina_section.dart';
import 'package:count_bloc/sarina/sarina_text.dart';
import 'package:flutter/material.dart';

class SarinaPage extends StatefulWidget {
  const SarinaPage({super.key});

  @override
  State<SarinaPage> createState() => _SarinaPageState();
}

class _SarinaPageState extends State<SarinaPage> {
  int _indice = 0;
  //final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: screenHeight * 0.10, // Proporcional à altura da tela
        automaticallyImplyLeading: false, // Remove a seta padrão
        titleSpacing: screenWidth * 0.04, // Proporcional à largura da tela
        title: Container(
          padding: EdgeInsets.all(
              screenWidth * 0.01), // Proporcional à largura da tela
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
          ),
          child: CircleAvatar(
            backgroundImage: const NetworkImage(
              'https://s3.static.brasilescola.uol.com.br/be/2021/09/via-lactea.jpg',
            ),
            radius: screenHeight * 0.03, // Proporcional à altura da tela
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: screenWidth * 0.04,
                top: screenHeight * 0.02,
                bottom: screenHeight *
                    0.02), // Proporcional à altura e largura da tela
            child: Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.brown,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: const Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Colors.blueAccent,
        currentIndex: _indice,
        onTap: (index) {
          setState(() {
            _indice = index;
          });
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
        ],
        selectedIconTheme: const IconThemeData(color: Colors.lightBlue),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
              screenWidth * 0.04), // Proporcional à largura da tela
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:
                CrossAxisAlignment.start, // Alinha os textos à esquerda
            children: [
              Text.rich(
                TextSpan(
                  text: 'Good Afternoon,\n',
                  style: TextStyle(
                      fontSize:
                          screenHeight * 0.04), // Proporcional à altura da tela
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sarina!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight *
                              0.04), // Proporcional à altura da tela
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.01), // Espaçamento proporcional
              Text(
                'How are you feeling today?',
                style: TextStyle(
                    fontSize:
                        screenHeight * 0.02), // Proporcional à altura da tela
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Espaçamento entre os containers
                    SarinaBoxStatus(
                      name: 'Happy',
                      imagePath: 'assets/image/Happy.png',
                      color: 'EF5DA8',
                    ),
                    SarinaBoxStatus(
                      name: 'Calm',
                      imagePath: 'assets/image/Calm.png',
                      color: 'AEAFF7',
                    ),
                    SarinaBoxStatus(
                      name: 'Manic',
                      imagePath: 'assets/image/Manic.png',
                      color: 'A0E3E2',
                    ),
                    SarinaBoxStatus(
                      name: 'Angry',
                      imagePath: 'assets/image/Angry.png',
                      color: 'F09E54',
                    ),
                    SarinaBoxStatus(
                      name: 'Angry',
                      imagePath: 'assets/image/Angry.png',
                      color: 'C3F2A6',
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02), // Espaçamento proporcional
              const BannerWidget(),
              const SizedBox(height: 16),
              const Row(
                children: [
                  SarinaSection(
                      icon: Icons.credit_card_rounded, label: 'Card Credit'),
                  SarinaSection(
                      icon: Icons.currency_bitcoin_rounded, label: 'Bitcoin'),
                ],
              ),
              const SizedBox(height: 16),
              const SarinaText(),
              const SizedBox(height: 16),
              const BannerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
