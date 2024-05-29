
import 'package:bilheteria_panucci/models/movie.dart';
import 'package:bilheteria_panucci/services/movies_api.dart';
import 'package:bloc/bloc.dart';
part 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitial());
  final HomeService homeServices = HomeService();

 Future<void> getMovies() async {
    emit(HomeLoading());
    try {
    final movies = await homeServices.fetchMovies();
      emit(HomeSuccess(movies));
    } catch (e) {
      emit(HomeError('Erro ao buscar filmes'));
    }
 }

 Future<void> getMoviesByGenre(String genre) async {
    emit(HomeLoading());
    try {
    final movies = await homeServices.fetchMoviesByGenre(genre);
      emit(HomeSuccess(movies));
    } catch (e) {
      emit(HomeError('Erro ao buscar filmes'));
    }
 }
}