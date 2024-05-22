import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Circle Avatar'),
        ),
        body: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageAvatar(
                  urlImage:
                      'https://img.odcdn.com.br/wp-content/uploads/2022/08/Engineered-Arts.webp',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageAvatar(
                  urlImage:
                      'https://img.odcdn.com.br/wp-content/uploads/2022/08/Engineered-Arts.webp',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageAvatar(
                  urlImage:
                      'https://img.odcdn.com.br/wp-content/uploads/2022/08/Engineered-Arts.webp',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageAvatar(
                  urlImage:
                      'https://img.odcdn.com.br/wp-content/uploads/2022/08/Engineered-Arts.webp',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageAvatar2(
                  urlImage:
                      'https://img.freepik.com/fotos-gratis/um-dinossauro-assustador_1268-26986.jpg',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageAvatar2(
                  urlImage:
                      'https://img.freepik.com/fotos-gratis/um-dinossauro-assustador_1268-26986.jpg',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageAvatar2(
                  urlImage:
                      'https://img.freepik.com/fotos-gratis/um-dinossauro-assustador_1268-26986.jpg',
                ),
              )
            ],
          ),
        )
        // const Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: <Widget>[
        //         CircleAvatar(
        //           radius: 50,
        //           backgroundImage: NetworkImage(
        //               'https://img.odcdn.com.br/wp-content/uploads/2022/08/Engineered-Arts.webp'),
        //         ),
        //         SizedBox(height: 20),
        //         CircleAvatar(
        //           radius: 50,
        //           backgroundColor: Colors.blue,
        //           child: Text(
        //             'A',
        //             style: TextStyle(
        //               fontSize: 40,
        //               color: Colors.white,
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              'https://img.odcdn.com.br/wp-content/uploads/2022/08/Engineered-Arts.webp'),
        ),
        Positioned(
          right: 5,
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

class ImageAvatar2 extends StatelessWidget {
  final String urlImage;
  const ImageAvatar2({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
        ),
        Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(3),
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
            )),
        SizedBox(
            width: 100,
            height: 100,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: const Text('Ao Vivo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ))),
            )),
      ],
    );
  }
}
