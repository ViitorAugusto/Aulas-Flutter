import 'package:flutter/material.dart';

class ButtomRotateText extends StatelessWidget {
  const ButtomRotateText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttom Rotate Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.airplanemode_on_sharp),
                  label: const Text('Elevated Button Icon'),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.deepPurple,
                      shadowColor: Colors.red,
                      elevation: 5,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                      padding: const EdgeInsets.all(10),
                      minimumSize: const Size(100, 50),
                      side: const BorderSide(
                        color: Colors.deepPurple,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text('Elevated Button ')),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.access_alarm_rounded)),
                const SizedBox(
                  height: 100,
                ),
                RotatedBox(
                    quarterTurns: -1,
                    child: Container(
                      color: Colors.deepPurple,
                      padding: const EdgeInsets.all(8),
                      child: const Text('Rotated Box'),
                    )),
                const Icon(Icons.ac_unit),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.deepPurple,
                    backgroundColor: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 5,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                    padding: const EdgeInsets.all(10),
                    minimumSize: const Size(100, 50),
                    side: const BorderSide(
                      color: Colors.deepPurple,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Text Button'),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'InkWell',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(
                          255, 255, 253, 253), // Cor do texto
                      backgroundColor:
                          const Color(0xFFFC2D65), // Cor de fundo do botão
                      textStyle: const TextStyle(
                        fontSize: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      minimumSize: const Size(350, 50),
                    ),
                    child: const Text('ENTRAR')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
