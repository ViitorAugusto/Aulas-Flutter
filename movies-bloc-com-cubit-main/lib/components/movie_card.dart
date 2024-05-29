import 'package:flutter/material.dart';
import 'package:bilheteria_panucci/screens/movie_screen.dart';
import '../models/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240, // Definindo a altura máxima para evitar problemas de layout
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.hardEdge,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 140, maxHeight: 140), // Ajustando a altura da imagem
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieScreen(movie: movie),
                    ),
                  );
                },
                child: movie.imageURI != null
                    ? Ink(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(movie.imageURI!),
                              fit: BoxFit.cover),
                        ),
                      )
                    : Ink(
                        child: const Center(
                          child: Icon(Icons.error),
                        ),
                      ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              movie.name,
              style: Theme.of(context).textTheme.displaySmall,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
